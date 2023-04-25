import 'dart:async';

import 'package:collection/collection.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:bluetooth_package/src/bluetooth.dart';
import 'package:bluetooth_package/src/shadow/base_device.dart';
import 'package:bluetooth_package/src/shadow/bluetooth_device.dart';
import 'package:bluetooth_package/src/scan.dart';
import 'package:bluetooth_package/src/service_availability.dart';
import 'package:rxdart/rxdart.dart';

import 'bluetooth_util/bluetooth_operations.dart';
import 'core/unit.dart';
import 'device_state.dart';
import 'shadow_bluetooth_failure.dart';
import 'location.dart';

abstract class ShadowBluetooth {
  ShadowBluetooth._();
  factory ShadowBluetooth() => ShadowBluetoothImplementation();
  static final instance = ShadowBluetooth();

  Stream<List<BaseShadowBluetoothDevice>> get availableDevices;
  Stream<List<BaseShadowBluetoothDevice>> get connectingDevices;
  Stream<List<BaseShadowBluetoothDevice>> get connectedDevices;
  Stream<List<BaseShadowBluetoothDevice>> get initializingDevices;
  Stream<List<BaseShadowBluetoothDevice>> get disconnectingDevices;

  Future<Either<Failure, Unit>> startScan({
    ScanMode scanMode = ScanMode.lowLatency,
    Duration scanDuration,
  });

  // TODO: implicit stop scan?
  FutureOr<Either<BluetoothOperationFailure, void>> stopScan();

  Stream<bool> get isScanningStream;

  // TODO make implicit?
  Future<void> turnBluetoothOn();
  // TODO make implicit?
  Stream<bool> get isBluetoothEnabled;
}

class ShadowBluetoothImplementation extends ShadowBluetooth {
  ShadowBluetoothImplementation._() : super._() {
    Bluetooth().isOnStream.where((e) => !e).listen((_) => _reset());
    Location().isOnStream.where((e) => !e).listen((_) => _reset());
    _removeStaleDevices();
  }

  void _reset() {
    _devicesStreamController.add([]);
    stopScan();
  }

  factory ShadowBluetoothImplementation() => instance;
  static final instance = ShadowBluetoothImplementation._();

  final Map<BaseShadowBluetoothDevice, StreamSubscription>
      _devicesToSubscriptions = {};

  @override
  Stream<List<BaseShadowBluetoothDevice>> get availableDevices =>
      _devicesStreamController.stream
          .map(_toOnlyAvailable)
          .distinct(listEquals);

  @override
  Stream<List<BaseShadowBluetoothDevice>> get connectingDevices =>
      _devicesStreamController.stream
          .map(_toOnlyConnecting)
          .distinct(listEquals);

  @override
  Stream<List<BaseShadowBluetoothDevice>> get initializingDevices =>
      _devicesStreamController.stream
          .map(_toOnlyInitializing)
          .distinct(listEquals);

  @override
  Stream<List<BaseShadowBluetoothDevice>> get connectedDevices =>
      _devicesStreamController.stream
          .map(_toOnlyConnected)
          .distinct(listEquals);

  @override
  Stream<List<BaseShadowBluetoothDevice>> get disconnectingDevices =>
      _devicesStreamController.stream
          .map(_toOnlyDisconnecting)
          .distinct(listEquals);

  @override
  Future<void> turnBluetoothOn() => Bluetooth().turnOn();

  @override
  Stream<bool> get isBluetoothEnabled => Bluetooth().isOnStream;

  final BehaviorSubject<List<BaseShadowBluetoothDevice>>
      _devicesStreamController = BehaviorSubject.seeded(
    [],
    onListen: () async {
      final devices = await FlutterBluePlus.instance.connectedDevices;
      await Stream.fromIterable(devices)
          .asyncMap(ShadowBluetoothDevice.createInitialized)
          .forEach(instance._onNewDevice);
    },
  );

  @override
  Future<Either<Failure, Unit>> startScan({
    ScanMode scanMode = ScanMode.lowLatency,
    Duration scanDuration = const Duration(seconds: 30),
  }) async =>
      ServiceAvailability().check(
        onEnabled: () async {
          if (!Scan().isScanning) _resetAvailableDevices();
          await Scan().start(
            onNewScanResult: _onNewDevice,
            scanMode: scanMode,
            scanDuration: scanDuration,
          );
          return unit;
        },
      );

  @override
  FutureOr<Either<BluetoothOperationFailure, void>> stopScan() => Scan().stop();

  @override
  Stream<bool> get isScanningStream => Scan().isScanningStream;

  List<BaseShadowBluetoothDevice> _toOnlyAvailable(
    List<BaseShadowBluetoothDevice> devices,
  ) =>
      _onlySpecificState(devices, DeviceState.available);

  List<BaseShadowBluetoothDevice> _toOnlyConnecting(
    List<BaseShadowBluetoothDevice> devices,
  ) =>
      _onlySpecificState(devices, DeviceState.connecting);

  List<BaseShadowBluetoothDevice> _toOnlyInitializing(
    List<BaseShadowBluetoothDevice> devices,
  ) =>
      _onlySpecificState(devices, DeviceState.initializing);

  List<BaseShadowBluetoothDevice> _toOnlyConnected(
    List<BaseShadowBluetoothDevice> devices,
  ) =>
      _onlySpecificState(devices, DeviceState.connected);

  List<BaseShadowBluetoothDevice> _toOnlyDisconnecting(
    List<BaseShadowBluetoothDevice> devices,
  ) =>
      _onlySpecificState(devices, DeviceState.disconnecting);

  List<BaseShadowBluetoothDevice> _onlySpecificState(
    List<BaseShadowBluetoothDevice> devices,
    DeviceState state,
  ) =>
      devices.where((device) => device.currentState == state).toList();

  void _onNewDevice(BaseShadowBluetoothDevice device) => _isDuplicateDevice(
        device,
        onDuplicate: () {},
        orElse: () {
          _devicesStreamController
              .add(_devicesStreamController.value + [device]);

          _devicesToSubscriptions[device] = device.deviceStateStream.listen(
            (_) => _devicesStreamController.add(_devicesStreamController.value),
          );
        },
      );

  T _isDuplicateDevice<T>(
    BaseShadowBluetoothDevice device, {
    required T Function() onDuplicate,
    required T Function() orElse,
  }) {
    final duplicate = _devicesStreamController.value
        .firstWhereOrNull((element) => element.id == device.id);

    return duplicate == null ? orElse() : onDuplicate();
  }

  void _resetAvailableDevices() => _devicesStreamController.add(
        _devicesStreamController.value
            .where((e) => e.currentState != DeviceState.available)
            .toList(),
      );

  void _removeStaleDevices() => _devicesStreamController.stream.listen(
        (devices) {
          final ids = devices.map((e) => e.id).toList();
          for (final entry in [..._devicesToSubscriptions.entries]) {
            final id = entry.key.id;
            if (ids.contains(id)) continue;

            // TODO make more explicit, its hidden in remove subscription
            entry.key.dispose();
            // TODO this may be redundant after calling dispose
            entry.value.cancel();
            _devicesToSubscriptions.remove(entry.key);
          }
        },
      );
}
