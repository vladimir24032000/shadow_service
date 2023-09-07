import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bluetooth_package/bluetooth_package.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:service_app/bloc/bluetooth/connected_device_bloc/connected_device_bloc.dart';
import 'package:service_app/presentation/manage_can_devices/log_page/log_page_state.dart';
import 'package:bluetooth_package/bluetooth_package.dart' as btpckg;
import 'package:service_app/presentation/manage_can_devices/log_page/log_struct.dart';

class LogPageCubit extends Cubit<LogPageState> {
  final ConnectedDeviceBloc connectedDevice;
  LogPageCubit({required this.connectedDevice}) : super(InitLogPageState());

  List<LogStruct> logs = [];
  int logsCount = 0;
  int errorsCount = 0;
  DeviceLogLevel? logLevel;

  Map<int, String> failures = {};

  Future<void> readFauiluresAsset(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/json_log_failtures.json");
    final jsonResult = jsonDecode(data);
    final jsonFailures = jsonResult['failures'] as Map<String, dynamic>;
    for (final jsonFailure in jsonFailures.entries) {
      failures[int.parse(jsonFailure.key)] = jsonFailure.value.toString();
    }
  }

  Future<void> setLogLevel() async {
    if (logLevel == null) {
      emit(FailedLogPageState("Log level was not selected"));
      return;
    }
    emit(InProgressLogPageState());
    await connectedDevice.state.device.setLogLevel(logLevel!).fold(
        (left) => emit(FailedLogPageState("Failed to send command")), (right) {
      logLevel = logLevel;
      emit(InitLogPageState());
    });
  }

  Future<void> clearLog() async {
    emit(InProgressLogPageState());

    await connectedDevice.state.device.setLogLevel(DeviceLogLevel.zero).fold(
        (left) => emit(FailedLogPageState("Failed to send command")), (right) {
      logs = [];
      logsCount = 0;
      errorsCount = 0;
      emit(InitLogPageState());
    });
  }

  Future<void> getLogInfo() async {
    Completer<LogPageState> completer = Completer<LogPageState>();
    final subscribtion =
        (connectedDevice.state.device as btpckg.ShadowBluetoothDevice)
            .shadowBTService
            ?.rxCharacteristicStream
            .listen((event) {
      if (event is btpckg.IsLogHistoryAnswerCommand) {
        logLevel = event.logLevel;
        if (event.isLog) {
          logsCount = event.logsLength;
        }
        if (event.isErrors) {
          errorsCount = event.errorsLength;
        }
        completer.complete(InitLogPageState());
      }
    });
    emit(InProgressLogPageState());
    await connectedDevice.state.device.sendIsLogHistoryCommand(false).fold(
        (left) {
      completer.complete(FailedLogPageState("Command was not sent"));
    }, (right) => null);
    final newState = await completer.future.timeout(const Duration(seconds: 10),
        onTimeout: () => FailedLogPageState("Timeout error"));
    subscribtion?.cancel();

    emit(newState);
  }

  Future<void> writeLogToFile() async {
    Directory? localDirectory;
    if (defaultTargetPlatform == TargetPlatform.android) {
      localDirectory = await getExternalStorageDirectory();
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      localDirectory = await getApplicationDocumentsDirectory();
    }
    if (localDirectory == null) {
      throw Exception("Can't get directory");
    }
    await localDirectory.create();
    final path = localDirectory.path +
        Platform.pathSeparator +
        DateFormat('dd.MM.yyyy').format(DateTime.now()) +
        '.txt';
    File logFile = File(path);
    if (!logFile.existsSync()) {
      await logFile.create();
    }
    final sink = logFile.openWrite();
    for (final log in logs) {
      sink.writeln(log.toString());
      final failureInfo = failures[log.id];
      if (failureInfo != null) {
        sink.writeln(failureInfo);
      } else {
        sink.writeln("ERROR. Description not found");
      }
    }
    await sink.close();
  }

  void setInitState() {
    switch (state) {
      case InitLogPageState():
        break;
      default:
        emit(InitLogPageState());
    }
  }

  Future<void> downloadRange(int minLog, int maxLog) async {
    logs.clear();
    Completer<LogPageState> completer = Completer<LogPageState>();
    final subscribtion =
        (connectedDevice.state.device as btpckg.ShadowBluetoothDevice)
            .shadowBTService
            ?.rxCharacteristicStream
            .listen((event) {
      if (event is btpckg.LogHistoryCommand) {
        for (var i = 0; i < event.logPackageCount; i++) {
          logs.add(
              LogStruct.fromBytes(Uint8List.fromList(event.logPacakge[i])));
        }
        if (logs.length >= maxLog - minLog || !event.isLog) {
          completer.complete(InitLogPageState());
        }
      }
    });
    emit(InProgressLogPageState());
    await connectedDevice.state.device
        .sendGetLogHistoryCommand(minLog, maxLog)
        .fold((left) {
      completer.complete(FailedLogPageState("Command was not sent"));
    }, (right) => null);
    final newState = await completer.future.timeout(
        const Duration(seconds: 120),
        onTimeout: () => FailedLogPageState("Timeout error"));
    subscribtion?.cancel();

    if (logs.isNotEmpty) {
      await writeLogToFile();
    }
    emit(newState);
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

        // logHistory.logPacakge
      }
    });

    emit(InProgressLogPageState());
    await connectedDevice.state.device
        .sendIsLogHistoryCommand(logSubscribe)
        .fold((left) {
      completer.complete();
      emit(FailedLogPageState("Command was not sent"));
    }, (right) => null);

    await completer.future.timeout(const Duration(seconds: 10),
        onTimeout: () => emit(FailedLogPageState("Timeout error")));
    downloadingSubscribtion?.cancel();
  }
}
