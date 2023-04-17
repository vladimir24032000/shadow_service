part of 'device_bloc.dart';

@freezed
class DeviceState with _$DeviceState {
  const DeviceState._();

  const factory DeviceState.available({
    required BaseShadowBluetoothDevice device,
  }) = DeviceBlocStateAvailable;

  const factory DeviceState.connecting({
    required BaseShadowBluetoothDevice device,
  }) = DeviceBlocStateConnecting;

  const factory DeviceState.connected({
    required ConnectedDeviceBloc connectedDeviceBloc,
  }) = DeviceBlocStateConnected;

  const factory DeviceState.disconnecting({
    required BaseShadowBluetoothDevice device,
  }) = DeviceBlocStateDisconnecting;

  bool get connectable => true;
  bool get disconnectable => true;

  String get deviceName => map(
        available: (state) => state.device.name,
        connecting: (state) => state.device.name,
        connected: (state) => state.connectedDeviceBloc.state.device.name,
        disconnecting: (state) => state.device.name,
      );
}

DeviceState deviceStateFromDevice(BaseShadowBluetoothDevice device) {
  switch (device.currentState) {
    case lt.DeviceState.disconnecting:
    case lt.DeviceState.available:
      return DeviceState.available(device: device);
    case lt.DeviceState.connecting:
    case lt.DeviceState.initializing:
      return DeviceState.connecting(device: device);
    case lt.DeviceState.connected:
      return DeviceState.connected(
        connectedDeviceBloc: ConnectedDeviceBloc(device),
      );
  }
}
