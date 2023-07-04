part of 'connected_device_bloc.dart';

@freezed
class ConnectedDeviceEvent with _$ConnectedDeviceEvent {
  const factory ConnectedDeviceEvent.getBootloaderVersion() =
      _GetBootloaderVersion;

  const factory ConnectedDeviceEvent.getFrimwareName() = _GetFrimwareName;

  const factory ConnectedDeviceEvent.rewritePin() = _RewritePin;

  const factory ConnectedDeviceEvent.sendConnectRequest() = _SendConnectRequest;

  const factory ConnectedDeviceEvent.setConfig() = _SetConfig;

  const factory ConnectedDeviceEvent.setPin() = _SetPin;

  const factory ConnectedDeviceEvent.setSecretCode() = _SetSecretCode;

  const factory ConnectedDeviceEvent.setSerialNumber() = _SetSerialNumber;
  const factory ConnectedDeviceEvent.firmwareVersionRequest() =
      _FirmwareVersionRequest;
}
