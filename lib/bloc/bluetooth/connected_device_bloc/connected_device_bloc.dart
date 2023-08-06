import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bluetooth_package/bluetooth_package.dart';
import 'package:service_app/bloc/bluetooth/device_bloc/device_bloc.dart';
import 'package:service_app/bloc/bluetooth/error/error_emitter_bloc.dart';

part 'connected_device_bloc.freezed.dart';
part 'connected_device_event.dart';
part 'connected_device_state.dart';

class ConnectedDeviceBloc
    extends Bloc<ConnectedDeviceEvent, ConnectedDeviceBlocState>
    with ErrorEmitter<ConnectedDeviceBlocState, DeviceError> {
  ConnectedDeviceBloc(BaseShadowBluetoothDevice device)
      : this._(
          ConnectedDeviceBlocState(
            device: device,
          ),
        );

  ConnectedDeviceBloc._(super.initialState) : super() {
    on<ConnectedDeviceEvent>(
      (event, emit) => event.map<FutureOr<void>>(
        getBootloaderVersion: (event) => state.device.getBootloaderVersion(),
        getFrimwareName: (event) => state.device.getFrimwareName(),
        rewritePin: (event) => state.device.rewritePin(),
        sendConnectRequest: (event) => state.device.sendConnectRequest(),
        setConfig: (event) => state.device.setConfig(),
        setPin: (event) => state.device.setPin(),
        setSecretCode: (event) => state.device.setSecretCode(),
        setSerialNumber: (event) => state.device.setSerialNumber(),
        firmwareVersionRequest: (event) =>
            state.device.firmwareVersionRequest(),
        testCommand: (event) => state.device.testCommand(),
      ),
    );
  }

  Uint8List? carfirmware;
  int? pagesCount;
  String? firmwwareName;
  int? delay = 0;

  FutureOr<bool> _withSubsequentPropertiesRefresh({
    required FutureOr<bool> Function() fn,
    required ConnectedDeviceBlocState state,
    required Emitter<ConnectedDeviceBlocState> emit,
  }) async {
    emit(state.copyWith(commandInProgress: true));
    final res = await fn();
    emit(state.copyWith(commandInProgress: false));
    if (!res) return false;

    return true;
  }

  DeviceError _errorBuilder({
    required String message,
    required ErrorType errorType,
  }) =>
      DeviceError(
        message: message,
        errorType: errorType,
        deviceName: state.device.name,
        deviceIdentifier: state.device.id,
      );

  @override
  Future<void> close() async {
    return super.close();
  }
}
