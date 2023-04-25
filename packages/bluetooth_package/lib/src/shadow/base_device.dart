import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:bluetooth_package/bluetooth_package.dart';
import 'package:bluetooth_package/src/core/unit.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseShadowBluetoothDevice {
  BaseShadowBluetoothDevice();

  String get name;

  DeviceIdentifier get id;
  BluetoothDeviceType get type;

  Future<Either<Unit, Unit>> connect();

  Future<Either<String, Unit>> disconnect();

  FutureOr<Either<BluetoothOperationFailure, Stream<BluetoothDeviceState>>>
      get state;

  FutureOr<Either<BluetoothOperationFailure, Stream<int>>> get mtu;

  FutureOr<Either<BluetoothOperationFailure, int>> requestMtu(int desiredMtu);

  FutureOr<Either<BluetoothOperationFailure, List<BluetoothService>>>
      discoverServices();

  FutureOr<Either<BluetoothOperationFailure, Stream<bool>>>
      get isDiscoveringServices;

  DeviceIdentifier get identifier;

  ValueStream<DeviceState> get deviceStateStream;

  DeviceState get currentState;

  void dispose();

  @override
  bool operator ==(Object other) =>
      identical(other, this) ||
      (other is BaseShadowBluetoothDevice && other.id == id);

  @override
  int get hashCode;
}
