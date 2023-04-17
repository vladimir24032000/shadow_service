import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bluetooth_package/bluetooth_package.dart';
import 'package:rxdart/rxdart.dart';
import 'package:service_app/bloc/bluetooth/connected_device_bloc/connected_device_bloc.dart';
import 'package:service_app/bloc/bluetooth/device_bloc/device_bloc.dart';

part 'connection_bloc.freezed.dart';
part 'connection_event.dart';
part 'connection_state.dart';

class BTConnectionBloc extends Bloc<BTConnectionEvent, BTConnectionState> {
  BTConnectionBloc() : super(const BTConnectionState()) {
    on<BTConnectionEvent>(
      (event, emit) => event.map<FutureOr>(
        setDevices: (event) => emit(state.copyWith(devices: event.devices)),
        addDevices: (event) =>
            emit(state.copyWith(devices: {...state.devices, ...event.devices})),
        removeDevices: (event) => emit(
          state.copyWith(
            devices: Map.fromEntries(
              state.devices.entries
                  .whereNot((e) => event.deviceIds.contains(e.key)),
            ),
          ),
        ),
        setIsScanning: (event) => emit(
          state.copyWith(isScanning: event.isScanning),
        ),
        error: (event) {
          debugPrint('BTConnectionBloc Error: ${event.error.toString()}');
        },
        reset: (_) => _reset(emit),
        startScan: (event) => _scan(event.timeout),
        stopScan: (_) => _shadowBluetooth.stopScan(),
        setResetted: (_) => emit(const BTConnectionState()),
      ),
    );
    _initialize();
  }

  static final bluetoothIsOn = ShadowBluetooth.instance.isBluetoothEnabled;

  Future<bool> get isBluetoothEnabled =>
      _shadowBluetooth.isBluetoothEnabled.first;

  final _shadowBluetooth = ShadowBluetooth.instance;

  StreamSubscription? _scanForDevicesSubscription;
  StreamSubscription? _connectedDevicesSubscription;
  StreamSubscription? _isScanningSubscription;
  StreamSubscription? _isBluetoothOnSubscription;

  Future<void> turnBluetoothOn() => ShadowBluetooth().turnBluetoothOn();

  void _initialize() {
    unawaited(_setupScanForDevicesStream());
    unawaited(_setupConnectedDevicesStream());
    unawaited(_setupScanStatusStream());
    _isBluetoothOnSubscription = bluetoothIsOn.listen(_onBluetoothIsOn);
  }

  List<ConnectedDeviceBloc> getConnectedDevices() {
    List<ConnectedDeviceBloc> connectedDevices = <ConnectedDeviceBloc>[];
    for (final deviceBloc in state.devices.values) {
      deviceBloc.state.maybeMap(
        connected: (state) => {connectedDevices.add(state.connectedDeviceBloc)},
        orElse: () => {},
      );
    }
    return connectedDevices;
  }

  Future<void> _setupScanForDevicesStream() async {
    await _scanForDevicesSubscription?.cancel();
    _scanForDevicesSubscription = CombineLatestStream.list([
      _shadowBluetooth.availableDevices,
      _shadowBluetooth.connectingDevices,
      _shadowBluetooth.initializingDevices,
      _shadowBluetooth.disconnectingDevices,
      _shadowBluetooth.connectedDevices,
    ])
        .debounceTime(Duration.zero)
        .map((event) => event.expand((element) => element).toList())
        .distinct(listEquals)
        .listen(
          _scanResultEvent,
          onError: (Object error) => add(BTConnectionEvent.error(error)),
        );
  }

  Future<void> _setupConnectedDevicesStream() async {
    await _connectedDevicesSubscription?.cancel();
    _connectedDevicesSubscription = _shadowBluetooth.connectedDevices.listen(
      _connectedEvent,
      onError: (Object error) => add(BTConnectionEvent.error(error)),
    );
  }

  Future<void> _setupScanStatusStream() async {
    _isScanningSubscription = _shadowBluetooth.isScanningStream.listen(
      (event) => add(BTConnectionEvent.setIsScanning(isScanning: event)),
    );
  }

  void _onBluetoothIsOn(bool bluetoothIsOn) {
    if (bluetoothIsOn) return;
    add(const BTConnectionEvent.setDevices(devices: {}));
  }

  Future<void> _reset(Emitter<BTConnectionState> emit) async {
    await Future.wait(state.devices.values.map((element) => element.close()));
    _initialize();
    add(const _SetResetted());
  }

  FutureOr<void> _scan(Duration timeout) async {
    final result = await _shadowBluetooth.startScan(scanDuration: timeout);
    if (result.isLeft) add(BTConnectionEvent.error(result.left));
  }

  Future<void> _scanResultEvent(
    Iterable<BaseShadowBluetoothDevice> scanResults,
  ) async {
    final previous = state.devices.values
        .map(
          (e) => e.state.map(
            available: (state) => state.device,
            connecting: (state) => state.device,
            connected: (state) => state.connectedDeviceBloc.state.device,
            disconnecting: (state) => state.device,
          ),
        )
        .toList();
    final newDevices = scanResults.whereNot(previous.contains).toList();

    final removedDevices = previous.whereNot(scanResults.contains).toList();

    var nextState = Map.of(state.devices);
    // add all new devices
    nextState.addAll({
      for (final device in newDevices)
        device.id: DeviceBloc.fromScanResult(device)
    });
    // remove all removed devices
    for (final device in removedDevices) {
      state.devices[device.id]?.close();
      nextState.remove(device.id);
    }

    add(BTConnectionEvent.setDevices(devices: nextState));
  }

  final _connectedDevices = <BaseShadowBluetoothDevice>[];

  void _connectedEvent(
    List<BaseShadowBluetoothDevice> scanResults,
  ) {
    final newDevices =
        scanResults.whereNot(_connectedDevices.contains).toList();
    final removedDevices =
        _connectedDevices.whereNot(scanResults.contains).toList();
    _connectedDevices
      ..addAll(newDevices)
      ..removeWhere(removedDevices.contains);

    for (final device in newDevices) {
      state.devices[device.id]?.close();
      add(
        BTConnectionEvent.addDevices(
          devices: {device.id: DeviceBloc.fromBluetoothDevice(device)},
        ),
      );
    }
    for (final device in removedDevices) {
      state.devices[device.id]?.close();
      add(
        BTConnectionEvent.addDevices(
          devices: {device.id: DeviceBloc.fromScanResult(device)},
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _scanForDevicesSubscription?.cancel();
    _connectedDevicesSubscription?.cancel();
    _isScanningSubscription?.cancel();
    _isBluetoothOnSubscription?.cancel();
    return super.close();
  }
}

Iterable<T> differenceBetween<T>(Iterable<T> first, Iterable<T> second) =>
    first.whereNot(second.contains);

Iterable<T> intersectionOf<T>(Iterable<T> first, Iterable<T> second) =>
    first.where(second.contains);
