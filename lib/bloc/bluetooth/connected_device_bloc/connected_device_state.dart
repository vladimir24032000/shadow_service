part of 'connected_device_bloc.dart';

@freezed
class ConnectedDeviceBlocState with _$ConnectedDeviceBlocState {
  const factory ConnectedDeviceBlocState({
    required BaseShadowBluetoothDevice device,
    @Default(false) bool commandInProgress,
  }) = _ConnectedDeviceBlocState;
}
