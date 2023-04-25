import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../bluetooth_operations.dart';
import 'device_function.dart';
import 'parallel_function.dart';

class QueueOperation implements BluetoothOperations {
  @override
  FutureOr<Either<BluetoothOperationFailure, T>> discoverServices<T>(
    FutureOr<T> Function() fn,
  ) =>
      ParallelFunction.instance.discoverServices(fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> stopScan<T>(
    FutureOr<T> Function() fn,
  ) =>
      ParallelFunction.instance.stopScan(fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> startScan<T>(
    FutureOr<T> Function() fn, {
    required Duration scanDuration,
  }) =>
      ParallelFunction.instance.stopScan(fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> isScanning<T>(
    FutureOr<T> Function() fn,
  ) =>
      ParallelFunction.instance.stopScan(fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> scanResults<T>(
    FutureOr<T> Function() fn,
  ) =>
      ParallelFunction.instance.stopScan(fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> connectedDevices<T>(
    FutureOr<T> Function() fn,
  ) =>
      ParallelFunction.instance.stopScan(fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> disconnect<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      DeviceFunction.instance.disconnect(id, fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> connect<T>(
    FutureOr<T> Function() fn,
  ) =>
      ParallelFunction.instance.connect(fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> state<T>(
    FutureOr<T> Function() fn,
  ) =>
      ParallelFunction.instance.state(fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> mtu<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      DeviceFunction.instance.mtu(id, fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> requestMtu<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      DeviceFunction.instance.requestMtu(id, fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> isDiscoveringServices<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      DeviceFunction.instance.isDiscoveringServices(id, fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> isNotifying<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      DeviceFunction.instance.isNotifying(id, fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> value<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      DeviceFunction.instance.value(id, fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> setNotifyValue<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      DeviceFunction.instance.setNotifyValue(id, fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> write<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      DeviceFunction.instance.write(id, fn);

  @override
  FutureOr<Either<BluetoothOperationFailure, T>> read<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  ) =>
      DeviceFunction.instance.read(id, fn);
}
