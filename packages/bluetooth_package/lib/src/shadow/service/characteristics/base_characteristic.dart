import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../../../bluetooth_util/bluetooth_operations.dart';
import '../../../bluetooth_util/bluetooth_operations_provider.dart';

class ShadowIndicateCharacteristic {
  ShadowIndicateCharacteristic(this._characteristic);

  final BluetoothCharacteristic _characteristic;

  FutureOr<Either<BluetoothOperationFailure, bool>> setNotifyValue({
    required bool value,
  }) =>
      BluetoothOperationsProvider.call.setNotifyValue<bool>(
        _characteristic.deviceId,
        () => _characteristic.setNotifyValue(value),
      );

  FutureOr<Either<BluetoothOperationFailure, bool>> get isNotifying =>
      BluetoothOperationsProvider.call.isNotifying(
        _characteristic.deviceId,
        () => _characteristic.isNotifying,
      );

  FutureOr<Either<BluetoothOperationFailure, Stream<List<int>>>> get value =>
      BluetoothOperationsProvider.call
          .value(_characteristic.deviceId, () => _characteristic.value);
}

class ShadowReadCharacteristic {
  ShadowReadCharacteristic(this._characteristic);

  final BluetoothCharacteristic _characteristic;

  FutureOr<Either<BluetoothOperationFailure, List<int>>> read() =>
      BluetoothOperationsProvider.call
          .read(_characteristic.deviceId, _characteristic.read);
}

class ShadowWriteCharacteristic {
  ShadowWriteCharacteristic(this._characteristic);

  final BluetoothCharacteristic _characteristic;

  FutureOr<void> write(List<int> value, {bool withoutResponse = false}) =>
      BluetoothOperationsProvider.call.write(
        _characteristic.deviceId,
        () => _characteristic.write(
          value,
          withoutResponse: withoutResponse,
        ),
      );
}
