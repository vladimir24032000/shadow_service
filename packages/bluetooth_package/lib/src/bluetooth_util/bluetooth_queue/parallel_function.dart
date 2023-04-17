import 'dart:async';

import 'package:either_dart/either.dart';

import '../bluetooth_operations.dart';
import 'parallel_bluetooth_queue.dart';

class ParallelFunction {
  static ParallelFunction instance = ParallelFunction();

  final queue = ParallelBluetoothQueue();

  FutureOr<Either<BluetoothOperationFailure, T>> discoverServices<T>(
    FutureOr<T> Function() fn,
  ) =>
      queue.add(fn, 'discoverServices');

  FutureOr<Either<BluetoothOperationFailure, T>> stopScan<T>(
    FutureOr<T> Function() fn,
  ) =>
      queue.add(fn, 'stopScan');

  FutureOr<Either<BluetoothOperationFailure, T>> isScanning<T>(
    FutureOr<T> Function() fn,
  ) =>
      queue.add(fn, 'isScanning');

  FutureOr<Either<BluetoothOperationFailure, T>> scanResults<T>(
    FutureOr<T> Function() fn,
  ) =>
      queue.add(fn, 'scanResults');

  FutureOr<Either<BluetoothOperationFailure, T>> connectedDevices<T>(
    FutureOr<T> Function() fn,
  ) =>
      queue.add(fn, 'connectedDevices');

  FutureOr<Either<BluetoothOperationFailure, T>> connect<T>(
    FutureOr<T> Function() fn,
  ) =>
      queue.add(fn, 'connect');

  FutureOr<Either<BluetoothOperationFailure, T>> state<T>(
    FutureOr<T> Function() fn,
  ) =>
      ParallelFunction.instance.state(fn);
}
