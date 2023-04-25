part of 'device_bloc.dart';

abstract class _DeviceEvent {}

@freezed
class DeviceEvent with _$DeviceEvent implements _DeviceEvent {
  const factory DeviceEvent.connect() = _Connect;

  const factory DeviceEvent.disconnect() = _Disconnect;
}

@freezed
class _PrivateDeviceEvent with _$_PrivateDeviceEvent implements _DeviceEvent {
  const factory _PrivateDeviceEvent.setAvailable() = _SetAvailable;
  const factory _PrivateDeviceEvent.setConnecting() = _SetConnecting;
  const factory _PrivateDeviceEvent.setConnected() = _SetConnected;
}
