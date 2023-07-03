import 'package:either_dart/src/either.dart';
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:bluetooth_package/src/device_state.dart';
import 'package:bluetooth_package/src/core/unit.dart';
import 'package:bluetooth_package/src/bluetooth_util/bluetooth_operations.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:bluetooth_package/src/shadow/base_device.dart';
import 'package:rxdart/rxdart.dart';

class MockDevice extends BaseShadowBluetoothDevice with EquatableMixin {
  late String _deviceName;
  late DeviceState _currentState;
  late Stream<BluetoothDeviceState> _mockDeviceStateStream;
  late final StreamSubscription<BluetoothDeviceState>? _stateSubscription;
  late final BehaviorSubject<DeviceState> _deviceStateStreamController =
      BehaviorSubject.seeded(_currentState);

  late DeviceIdentifier _id;

  MockDevice.createRightSinInsole() {
    _deviceName = "CAN-1";
    _currentState = DeviceState.available;

    _mockDeviceStateStream = const Stream.empty();
    _stateSubscription = _mockDeviceStateStream.listen((event) {});
    _id = const DeviceIdentifier("00:00:00:00:00:00");
  }

  MockDevice.createLeftSinInsole() {
    _deviceName = "CAN-2";
    _currentState = DeviceState.available;
    _mockDeviceStateStream = const Stream.empty();
    _stateSubscription = _mockDeviceStateStream.listen((event) {});
    _id = const DeviceIdentifier("00:00:00:00:00:01");
  }
  MockDevice.createRightInsoleRealSteps() {
    _deviceName = "CAN-3";
    _currentState = DeviceState.available;
    _mockDeviceStateStream = const Stream.empty();
    _stateSubscription = _mockDeviceStateStream.listen((event) {});
    _id = const DeviceIdentifier("00:00:00:00:00:02");
  }

  MockDevice.createLeftInsoleRealSteps() {
    _deviceName = "CAN-4";
    _currentState = DeviceState.available;
    _mockDeviceStateStream = const Stream.empty();
    _stateSubscription = _mockDeviceStateStream.listen((event) {});
    _id = const DeviceIdentifier("00:00:00:00:00:03");
  }
  @override
  Future<Either<Unit, Unit>> sendTest() async {
    return const Right(unit);
  }

  @override
  Future<Either<Unit, Unit>> connect() async {
    _setCurrentState(DeviceState.connecting);
    await Future.delayed(const Duration(milliseconds: 1000));
    _setCurrentState(DeviceState.initializing);
    await Future.delayed(const Duration(milliseconds: 1000));
    _setCurrentState(DeviceState.connected);

    return const Right(unit);
  }

  void _setCurrentState(DeviceState value) {
    if (_currentState == value) return;
    _currentState = value;
    _deviceStateStreamController.add(_currentState);
  }

  @override
  DeviceState get currentState => _currentState;

  @override
  ValueStream<DeviceState> get deviceStateStream =>
      _deviceStateStreamController.stream;

  @override
  Future<Either<String, Unit>> disconnect() async {
    _setCurrentState(DeviceState.disconnecting);
    await Future.delayed(const Duration(milliseconds: 100));
    _setCurrentState(DeviceState.available);
    return const Right(unit);
  }

  @override
  FutureOr<Either<BluetoothOperationFailure, List<BluetoothService>>>
      discoverServices() async {
    return const Right(<BluetoothService>[]);
  }

  @override
  void dispose() {
    _stateSubscription?.cancel();
    _deviceStateStreamController.close();
  }

  @override
  DeviceIdentifier get id => _id;

  @override
  DeviceIdentifier get identifier => _id;

  @override
  FutureOr<Either<BluetoothOperationFailure, Stream<bool>>>
      get isDiscoveringServices => Right(BehaviorSubject.seeded(false));

  @override
  FutureOr<Either<BluetoothOperationFailure, Stream<int>>> get mtu =>
      Right(Stream<int>.value(128));

  @override
  String get name => _deviceName;

  @override
  List<Object?> get props => [id];

  @override
  FutureOr<Either<BluetoothOperationFailure, int>> requestMtu(int desiredMtu) {
    return const Right(128);
  }

  @override
  FutureOr<Either<BluetoothOperationFailure, Stream<BluetoothDeviceState>>>
      get state => Right(_mockDeviceStateStream);

  @override
  BluetoothDeviceType get type => BluetoothDeviceType.le;
}
