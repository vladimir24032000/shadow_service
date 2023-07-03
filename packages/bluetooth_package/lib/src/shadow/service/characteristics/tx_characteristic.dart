import 'package:bluetooth_package/src/shadow/service/characteristics/base_characteristic.dart';
import 'package:either_dart/either.dart';

class TxWriteFailure implements Exception {}

class TxCharacteristic extends ShadowWriteCharacteristic {
  TxCharacteristic(super.characteristic);
  var count = 0;
  Future<Either<TxWriteFailure, void>> writeTX() async {
    try {
      final command = [count, 0, 0x0B, 0x0B, count, count, count, count];
      print("TX $command");
      await write(command);
      count++;
      return const Right(null);
    } catch (_) {
      return Left(TxWriteFailure());
    }
  }
}
