import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BluetoothOperationFailure {
  BluetoothOperationFailure({
    required this.info,
    required this.stackTrace,
    required this.exception,
  });

  final String info;
  final StackTrace stackTrace;
  final dynamic exception;

  @override
  String toString() => info;
}

abstract class BluetoothOperations {
  FutureOr<Either<BluetoothOperationFailure, T>> discoverServices<T>(
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> stopScan<T>(
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> startScan<T>(
    FutureOr<T> Function() fn, {
    required Duration scanDuration,
  });

  FutureOr<Either<BluetoothOperationFailure, T>> isScanning<T>(
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> scanResults<T>(
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> connectedDevices<T>(
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> disconnect<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> connect<T>(
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> state<T>(
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> mtu<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> requestMtu<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> isDiscoveringServices<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> isNotifying<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> value<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> setNotifyValue<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> write<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  );

  FutureOr<Either<BluetoothOperationFailure, T>> read<T>(
    DeviceIdentifier id,
    FutureOr<T> Function() fn,
  );
}
