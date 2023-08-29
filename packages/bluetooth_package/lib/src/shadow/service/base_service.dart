import 'dart:async';
import 'dart:typed_data';

import 'package:bluetooth_package/src/shadow/protocol/commands_read/base_command.dart';
import 'package:bluetooth_package/src/shadow/protocol/commands_write/base_command.dart';
import 'package:bluetooth_package/src/shadow/protocol/constants.dart';
import 'package:bluetooth_package/src/shadow/service/characteristics/rx_characteristic.dart';
import 'package:bluetooth_package/src/shadow/service/characteristics/tx_characteristic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class ShadowBTService {
  ShadowBTService(
    this._uartService,
  ) {
    _rxCharacterictic = RxCharacteristic(
      characteristics.firstWhere(
        (element) => element.uuid == ShadowBTCharacteristics.rx,
      ),
    );
  }

  List<BluetoothCharacteristic> get characteristics =>
      _uartService.characteristics;

  // List<BluetoothCharacteristic> get deviceInfoCharacteristics =>
  //     _deviceInfoService.characteristics;

  final BluetoothService _uartService;

  late final _txCharacterictic = TxCharacteristic(
    characteristics.firstWhere(
      (element) => element.uuid == ShadowBTCharacteristics.tx,
    ),
  );
  late final RxCharacteristic _rxCharacterictic;

  Stream<BaseReadCommand> get rxCharacteristicStream =>
      _rxCharacterictic.streamController.stream;

  Stream<BaseWriteCommand> get txCharacteristicStream =>
      _txCharacterictic.streamController.stream;

  Future<bool> sendConnectRequest() async {
    return _txCharacterictic
        .writeTX(ConnectRequstCommand())
        .fold((left) => false, (right) {
      return true;
    });
  }

  Future<bool> firmwareVersionRequest() async {
    return _txCharacterictic
        .writeTX(FirmwareVersionRequestCommand())
        .fold((left) => false, (right) {
      return true;
    });
  }

  Future<bool> getBootloaderVersion() async {
    return _txCharacterictic
        .writeTX(GetBootLoaderVersionCommand())
        .fold((left) => false, (right) {
      return true;
    });
  }

  Future<bool> getFrimwareName() async {
    return _txCharacterictic
        .writeTX(RequestFirmwareNameCommand())
        .fold((left) => false, (right) {
      return true;
    });
  }

  Future<bool> rewritePin() async {
    return _txCharacterictic.writeTX(RewritePinCommand()).fold((left) => false,
        (right) {
      return true;
    });
  }

  Future<bool> setConfig() async {
    return _txCharacterictic.writeTX(SetConfigCommand()).fold((left) => false,
        (right) {
      return true;
    });
  }

  Future<bool> setPin() async {
    return _txCharacterictic.writeTX(SetPinCommand()).fold((left) => false,
        (right) {
      return true;
    });
  }

  Future<bool> testCommand() async {
    return _txCharacterictic.writeTX(TestCommand()).fold((left) => false,
        (right) {
      return true;
    });
  }

  Future<bool> setSecretCode() async {
    return _txCharacterictic
        .writeTX(SetSecretCodeCommand())
        .fold((left) => false, (right) {
      return true;
    });
  }

  Future<bool> setSerialNumber() async {
    return _txCharacterictic
        .writeTX(SetSerialNumberCommand())
        .fold((left) => false, (right) {
      return true;
    });
  }

  Future<bool> setLogLevel(DeviceLogLevel logLevel) async {
    return sendConfirmationCommand(
        SetLogLevelCommand(logLevel: logLevel.index));
  }

  Future<bool> updateStartCommand(
      String firmwareName, int pagesCount, List<int> crc) async {
    return sendConfirmationCommand(UpdateStartCommand(
        firmwareName: firmwareName, pagesCount: pagesCount, crc: crc));
    // return _txCharacterictic
    //     .writeTX(UpdateStartCommand(
    //         firmwareName: firmwareName, pagesCount: pagesCount))
    //     .fold((left) => false, (right) {
    //   return true;
    // });
  }

  Future<bool> firmwareSendKey() async {
    return sendConfirmationCommand(FirmwareSendKeyCommand());
    // return _txCharacterictic
    //     .writeTX(FirmwareSendKeyCommand())
    //     .fold((left) => false, (right) {
    //   return true;
    // });
  }

  Future<bool> firmwareSendPage(Uint8List data, int count) async {
    // return sendConfirmationCommand(
    //     FirmwareSendPagesCommand(count: count, data: data));
    return _txCharacterictic
        .writeTX(FirmwareSendPagesCommand(count: count, data: data))
        .fold((left) => false, (right) {
      return true;
    });
  }

  Future<bool> sendIsLogHistoryCommand(bool logSubscribe) async {
    return _txCharacterictic
        .writeTX(IsLogHistoryCommand(
      logSubscribe: logSubscribe,
    ))
        .fold((left) => false, (right) {
      return true;
    });
  }

  Future<bool> firmwareSendStop() async {
    return sendConfirmationCommand(UpdateStopCommand());
    // return _txCharacterictic.writeTX(UpdateStopCommand()).fold((left) => false,
    //     (right) {
    //   return true;
    // });
  }

  Future<bool> sendConfirmationCommand(
    BaseWriteCommand command, {
    Duration timeoutDuration = const Duration(milliseconds: 3002),
  }) async {
    final Completer<BaseReadCommand> completer = Completer<BaseReadCommand>();

    final subscription =
        _rxCharacterictic.confirmationController.stream.listen((event) {
      if (event.commandCode == command.confiramtionCommandCode) {
        completer.complete(event);
      }
    });
    final writeResult = await _txCharacterictic.writeTX(command);
    if (writeResult.isLeft) {
      subscription.cancel();

      return false;
    }

    final result = await completer.future.timeout(timeoutDuration,
        onTimeout: () =>
            UnknownCommand(commandCode: -1, packetId: -1, bytes: []));
    subscription.cancel();
    if (result is BaseAnswerCommand) {
      return result.result;
    }
    return result is! UnknownCommand;

    // try {
    //   final confirmationCode = await _rxCharacterictic
    //       .confirmationController.stream
    //       .firstWhere((element) =>
    //           element.commandCode == command.confiramtionCommandCode)
    //       .timeout(
    //         timeoutDuration,
    //         onTimeout: () =>
    //             UnknownCommand(commandCode: -1, packetId: -1, bytes: []),
    //       );
    //   if (confirmationCode is BaseAnswerCommand) {
    //     return confirmationCode.result;
    //   }
    //   return confirmationCode is! UnknownCommand;
    // } catch (e) {
    //   assert(false, 'send confirmation code exception $e');
    //   return false;
    // }
  }

  /// Returns the battery status in percent.
  ///
  /// e.g. 31
  // Future<Either<BluetoothOperationFailure, int>> batteryPercentage() async {
  //   final readResult = await BluetoothOperationsProvider.call.read(
  //     _batteryService.deviceId,
  //     _batteryService.characteristics.first.read,
  //   );
  //   if (readResult.isLeft) {
  //     return Left(
  //       BluetoothOperationFailure(
  //         info: 'Read operation failed',
  //         stackTrace: readResult.left.stackTrace,
  //         exception: readResult.left.exception,
  //       ),
  //     );
  //   }
  //   return Right(readResult.right.first);
  // }
}
