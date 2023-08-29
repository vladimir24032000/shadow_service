import 'dart:async';

import 'package:bluetooth_package/bluetooth_package.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/bluetooth/connected_device_bloc/connected_device_bloc.dart';
import 'package:service_app/presentation/manage_can_devices/log_page/log_page_state.dart';
import 'package:bluetooth_package/bluetooth_package.dart' as btpckg;
import 'package:service_app/presentation/manage_can_devices/log_page/log_struct.dart';

class LogPageCubit extends Cubit<LogPageState> {
  final ConnectedDeviceBloc connectedDevice;
  LogPageCubit({required this.connectedDevice}) : super(InitLogPageState());

  List<LogStruct> logs = [];
  int? logsCount;
  int? errorsCount;

  Future<void> setLogLevel(DeviceLogLevel logLevel) async {
    emit(InProgressLogPageState());
    await connectedDevice.state.device.setLogLevel(logLevel).fold(
        (left) => emit(FailedLogPageState()),
        (right) => emit(InitLogPageState()));
  }

  Future<void> clearLog() async {
    emit(InProgressLogPageState());
    logs = [];
    await connectedDevice.state.device.setLogLevel(DeviceLogLevel.zero).fold(
        (left) => emit(FailedLogPageState()),
        (right) => emit(InitLogPageState()));
  }

  Future<void> startDownloading(bool logSubscribe) async {
    var isHeaderPakcetReceived = false;
    logs = [];
    Completer completer = Completer();
    final downloadingSubscribtion =
        (connectedDevice.state.device as btpckg.ShadowBluetoothDevice)
            .shadowBTService
            ?.rxCharacteristicStream
            .listen((event) {
      if (event is! btpckg.IsLogHistoryAnswerCommand &&
          event is! btpckg.LogHistoryCommand) {
        return;
      }
      if (!isHeaderPakcetReceived) {
        if (event is btpckg.IsLogHistoryAnswerCommand) {
          errorsCount = event.errorsLength;
          logsCount = event.logsLength;
          if (!event.logSubscribe) {
            completer.complete();
          }
          isHeaderPakcetReceived = true;
        }
      } else {
        final logHistory = event as btpckg.LogHistoryCommand;
        if(logHistory.)
        logs.add(LogStruct(number: logHistory., count: count, time: time, id: id, devStatus: devStatus, description: description))
        // logHistory.logPacakge
      }
    });

    emit(InProgressLogPageState());
    await connectedDevice.state.device
        .sendIsLogHistoryCommand(logSubscribe)
        .fold((left) {
      completer.complete();
      emit(FailedLogPageState());
    }, (right) => null);

    await completer.future.timeout(const Duration(seconds: 10),
        onTimeout: () => emit(FailedLogPageState()));
    downloadingSubscribtion?.cancel();
  }
}
