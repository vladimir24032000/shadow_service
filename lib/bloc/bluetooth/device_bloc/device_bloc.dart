import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bluetooth_package/bluetooth_package.dart';
import 'package:bluetooth_package/bluetooth_package.dart' as lt;
import 'package:service_app/bloc/bluetooth/connected_device_bloc/connected_device_bloc.dart';
import 'package:service_app/bloc/bluetooth/error/error_emitter_bloc.dart';

part 'device_bloc.freezed.dart';
part 'device_event.dart';
part 'device_state.dart';

class DeviceBloc extends Bloc<_DeviceEvent, DeviceState>
    with ErrorEmitter<DeviceState, DeviceError> {
  DeviceBloc.fromBluetoothDevice(BaseShadowBluetoothDevice device)
      : this._(
          device,
          DeviceBlocStateConnected(
            connectedDeviceBloc: ConnectedDeviceBloc(device),
          ),
        );

  DeviceBloc.fromScanResult(BaseShadowBluetoothDevice device)
      : this._(device, deviceStateFromDevice(device));

  DeviceBloc._(BaseShadowBluetoothDevice device, DeviceState initial)
      : super(initial) {
    on<DeviceEvent>(
      (event, emit) => event.map<FutureOr>(
        connect: (_) => device.connect(),
        disconnect: (_) => device.disconnect(),
      ),
    );

    on<_PrivateDeviceEvent>(
      (event, emit) => event.map(
        setAvailable: (_) => emit(
          DeviceState.available(device: device),
        ),
        setConnecting: (_) => emit(
          DeviceState.connecting(device: device),
        ),
        setConnected: (_) => emit(
          DeviceState.connected(
            connectedDeviceBloc: ConnectedDeviceBloc(device),
          ),
        ),
      ),
    );

    _sub = device.deviceStateStream.listen(
      (event) {
        switch (event) {
          case lt.DeviceState.disconnecting:
          case lt.DeviceState.available:
            return add(const _PrivateDeviceEvent.setAvailable());
          case lt.DeviceState.connecting:
          case lt.DeviceState.initializing:
            return add(const _PrivateDeviceEvent.setConnecting());
          case lt.DeviceState.connected:
            return add(const _PrivateDeviceEvent.setConnected());
        }
      },
    );
  }
  StreamSubscription? _sub;
  StreamSubscription<ErrorEmitterState<DeviceError>>? _deviceErrorSubscription;

  @override
  Future<void> close() async {
    await _deviceErrorSubscription?.cancel();
    await state.mapOrNull<FutureOr>(
      connected: (state) async {
        await state.connectedDeviceBloc.close();
      },
    );
    await _sub?.cancel();
    return super.close();
  }
}

enum ErrorType {
  commandException,
  sensorPropertiesException,
  unknownException,
  error
}

class DeviceError {
  DeviceError({
    required this.message,
    required this.errorType,
    required this.deviceName,
    required this.deviceIdentifier,
  });

  final String message;
  final ErrorType errorType;
  final String deviceName;
  final DeviceIdentifier deviceIdentifier;
}
