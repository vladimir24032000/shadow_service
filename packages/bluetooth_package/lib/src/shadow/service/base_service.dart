import 'package:either_dart/either.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../../bluetooth_util/bluetooth_operations.dart';
import '../../bluetooth_util/bluetooth_operations_provider.dart';

abstract class ShadowBTService {
  ShadowBTService(this._forceInsoleMeasService, this._batteryService,
      this._deviceInfoService);

  final BluetoothService _forceInsoleMeasService;
  final BluetoothService _deviceInfoService;
  final BluetoothService _batteryService;

  List<BluetoothCharacteristic> get characteristics =>
      _forceInsoleMeasService.characteristics;

  List<BluetoothCharacteristic> get deviceInfoCharacteristics =>
      _deviceInfoService.characteristics;

  /// Returns the battery status in percent.
  ///
  /// e.g. 31
  Future<Either<BluetoothOperationFailure, int>> batteryPercentage() async {
    final readResult = await BluetoothOperationsProvider.call.read(
      _batteryService.deviceId,
      _batteryService.characteristics.first.read,
    );
    if (readResult.isLeft) {
      return Left(
        BluetoothOperationFailure(
          info: 'Read operation failed',
          stackTrace: readResult.left.stackTrace,
          exception: readResult.left.exception,
        ),
      );
    }
    return Right(readResult.right.first);
  }
}
