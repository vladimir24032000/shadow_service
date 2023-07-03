import 'dart:async';

import 'package:bluetooth_package/src/bluetooth_util/bluetooth_operations.dart';
import 'package:bluetooth_package/src/shadow/service/characteristics/base_characteristic.dart';
import 'package:either_dart/either.dart';

class RxReadException implements Exception {}

class RxCharacteristic extends ShadowIndicateCharacteristic {
  RxCharacteristic(super.characteristic) {
    _startListeningOnCharacteristic();
  }

  FutureOr<Either<BluetoothOperationFailure, void>>
      _startListeningOnCharacteristic() async {
    await setNotifyValue(value: true);
    final valueStream = await value;
    if (valueStream.isLeft) return Left(valueStream.left);

    valueStream.right.listen(
      (event) {
        if (event.isEmpty) return;
        print("Rx $event");
      },
      onError: (Object error) {
        assert(false, 'Error in measurement characteristic stream: $error');
      },
    );
    return const Right(null);
  }
}
