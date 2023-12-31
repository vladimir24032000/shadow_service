import 'dart:async';
import 'dart:typed_data';

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

  FutureOr<Either<BluetoothOperationFailure, Stream<BluetoothConnectionState>>>
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
  Future<Either<Unit, Unit>> testCommand();

  Future<Either<Unit, Unit>> updateStartCommand(
      String firmwareName, int pagesCount, List<int> crc);

  Future<Either<Unit, Unit>> setLogLevel(DeviceLogLevel logLevel);

  Future<Either<Unit, Unit>> sendIsLogHistoryCommand(bool logSubscribe);

  Future<Either<Unit, Unit>> sendGetLogHistoryCommand(int minLog, int maxLog);

  Future<Either<Unit, Unit>> firmwareSendKey();

  Future<Either<Unit, Unit>> firmwareSendPage(Uint8List data, int count);

  Future<Either<Unit, Unit>> firmwareSendStop();
  Future<Either<Unit, Unit>> sendConnectRequest();

  Future<Either<Unit, Unit>> firmwareVersionRequest();

  Future<Either<Unit, Unit>> getBootloaderVersion();

  Future<Either<Unit, Unit>> getFrimwareName();

  Future<Either<Unit, Unit>> rewritePin();

  Future<Either<Unit, Unit>> setConfig();

  Future<Either<Unit, Unit>> setPin();

  Future<Either<Unit, Unit>> setSecretCode();

  Future<Either<Unit, Unit>> setSerialNumber();

  void dispose();

  @override
  bool operator ==(Object other) =>
      identical(other, this) ||
      (other is BaseShadowBluetoothDevice && other.id == id);

  @override
  int get hashCode;
}
