import 'dart:async';

import 'package:either_dart/either.dart';

import '../bluetooth_operations.dart';
import 'bluetooth_queue.dart';

class ParallelBluetoothQueue extends BluetoothQueue {
  ParallelBluetoothQueue({
    super.delay,
  });

  @override
  Future<Either<BluetoothOperationFailure, T>> add<T>(
    FutureOr<T> Function() event, [
    String name = '',
  ]) async {
    try {
      T next;
      final res = event.call();
      if (res is Future<T>) {
        next = await res.timeout(const Duration(seconds: 20));
      } else {
        next = res;
      }
      return Right(next);
    } catch (exception, stackTrace) {
      return Left(
        BluetoothOperationFailure(
          info: exception.toString(),
          stackTrace: stackTrace,
          exception: exception,
        ),
      );
    }
  }
}
