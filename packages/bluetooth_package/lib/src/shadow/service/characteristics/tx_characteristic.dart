import 'package:bluetooth_package/src/shadow/protocol/commands_write/base_command.dart';
import 'package:bluetooth_package/src/shadow/service/characteristics/base_characteristic.dart';
import 'package:either_dart/either.dart';

class TxWriteFailure implements Exception {}

class TxCharacteristic extends ShadowWriteCharacteristic {
  TxCharacteristic(super.characteristic);
  var count = 0;
  Future<Either<TxWriteFailure, void>> writeTX(BaseWriteCommand command) async {
    try {
      command.packetId = count;
      await write(command.toBytes());
      count++;
      return const Right(null);
    } catch (_) {
      return Left(TxWriteFailure());
    }
  }
}
