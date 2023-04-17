import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../bluetooth_operations.dart';
import 'device_bluetooth_queue.dart';

class DeviceFunction {
  static Map<DeviceIdentifier, DeviceBluetoothQueue> idToQueue = {};
  static final instance = DeviceFunction();

  static FutureOr<Either<BluetoothOperationFailure, T>> queueOrDefault<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn, [
    String name = '',
  ]) {
    if (idToQueue.containsKey(id)) {
      return idToQueue[id]!.add(fn, name);
    } else {
      idToQueue[id] = DeviceBluetoothQueue(id);
      return queueOrDefault(id, fn, name);
    }
  }

  FutureOr<Either<BluetoothOperationFailure, T>> disconnect<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) async {
    final result = await queueOrDefault(id, fn, 'disconnect, id: $id');
    idToQueue.remove(id);
    return result;
  }

  FutureOr<Either<BluetoothOperationFailure, T>> mtu<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      queueOrDefault(id, fn, 'mtu, id: $id');

  FutureOr<Either<BluetoothOperationFailure, T>> requestMtu<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      queueOrDefault(id, fn, 'requestMtu, id: $id');

  FutureOr<Either<BluetoothOperationFailure, T>> isDiscoveringServices<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      queueOrDefault(id, fn, 'isDiscoveringServices, id: $id');

  FutureOr<Either<BluetoothOperationFailure, T>> isNotifying<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      queueOrDefault(id, fn, 'isNotifying, id: $id');

  FutureOr<Either<BluetoothOperationFailure, T>> value<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      queueOrDefault(id, fn, 'value, id: $id');

  FutureOr<Either<BluetoothOperationFailure, T>> setNotifyValue<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      queueOrDefault(id, fn, 'setNotifyValue, id: $id');

  FutureOr<Either<BluetoothOperationFailure, T>> write<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      queueOrDefault(id, fn, 'write, id: $id');

  FutureOr<Either<BluetoothOperationFailure, T>> read<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      queueOrDefault(id, fn, 'read, id: $id');
}
