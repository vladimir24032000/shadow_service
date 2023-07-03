import 'package:bluetooth_package/src/shadow/protocol/constants.dart';
import 'package:bluetooth_package/src/shadow/service/characteristics/rx_characteristic.dart';
import 'package:bluetooth_package/src/shadow/service/characteristics/tx_characteristic.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../../bluetooth_util/bluetooth_operations.dart';
import '../../bluetooth_util/bluetooth_operations_provider.dart';

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
  Future<bool> sendTest() async {
    return _txCharacterictic.writeTX().fold((left) => false, (right) {
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
