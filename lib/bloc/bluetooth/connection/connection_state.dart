part of 'connection_bloc.dart';

@freezed
class BTConnectionState with _$BTConnectionState {
  const factory BTConnectionState({
    @Default(<DeviceIdentifier, DeviceBloc>{})
        Map<DeviceIdentifier, DeviceBloc> devices,
    @Default(false) bool isScanning,
    @Default(false) bool anyDeviceConnected,
  }) = _State;
}
