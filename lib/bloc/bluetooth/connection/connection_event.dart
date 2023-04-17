part of 'connection_bloc.dart';

@freezed
class BTConnectionEvent with _$BTConnectionEvent {
  const factory BTConnectionEvent.setDevices({
    required Map<DeviceIdentifier, DeviceBloc> devices,
  }) = _SetDevices;

  const factory BTConnectionEvent.addDevices({
    required Map<DeviceIdentifier, DeviceBloc> devices,
  }) = _AddDevices;

  const factory BTConnectionEvent.removeDevices({
    required Iterable<DeviceIdentifier> deviceIds,
  }) = _RemoveDevices;

  const factory BTConnectionEvent.error(Object? error) = _Error;

  const factory BTConnectionEvent.reset() = _Reset;

  const factory BTConnectionEvent.startScan({
    @Default(Duration(seconds: 10)) Duration timeout,
  }) = _StartScan;

  const factory BTConnectionEvent.stopScan() = _StopScan;

  const factory BTConnectionEvent.setIsScanning({
    required bool isScanning,
  }) = _SetIsScanning;

  const factory BTConnectionEvent.setResetted() = _SetResetted;
}
