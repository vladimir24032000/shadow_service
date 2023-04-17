import 'dart:async';

import 'package:either_dart/either.dart';

import '../bluetooth_operations.dart';

class BluetoothQueue {
  BluetoothQueue({
    Duration? delay,
  }) : delay = delay ?? const Duration(milliseconds: 5);

  final Duration delay;
  bool get queueIsWaitingForDelay => _delay != null;
  Future<void>? _delay;
  bool b = false;

  Future<Either<BluetoothOperationFailure, T>> add<T>(
    FutureOr<T> Function() event, [
    String name = '',
  ]) async {
    while (queueIsWaitingForDelay || b) {
      await (_delay ?? Future.delayed(delay));
      _delay = null;
    }
    try {
      b = true;
      T next;
      final res = event.call();
      if (res is Future<T>) {
        next = await res.timeout(const Duration(seconds: 20));
      } else {
        next = res;
      }
      b = false;
      _delay = Future<void>.delayed(delay);
      return Right(next);
    } catch (exception, stackTrace) {
      return Left(
        BluetoothOperationFailure(
          info: exception.toString(),
          stackTrace: stackTrace,
          exception: exception,
        ),
      );
    } finally {
      b = false;
    }
  }
}
