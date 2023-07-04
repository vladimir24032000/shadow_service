import 'dart:async';

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
