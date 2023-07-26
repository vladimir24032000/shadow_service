import 'dart:async';
import 'dart:io';

import 'package:bluetooth_package/src/shadow/protocol/constants.dart';
import 'package:bluetooth_package/src/shadow/service/base_service.dart';
import 'package:bluetooth_package/src/shadow/service/characteristics/rx_characteristic.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:bluetooth_package/bluetooth_package.dart';
import 'package:bluetooth_package/src/bluetooth_util/bluetooth_operations_provider.dart';
import 'package:bluetooth_package/src/core/temp.dart';
import 'package:bluetooth_package/src/core/unit.dart';
import 'package:bluetooth_package/src/service_availability.dart';
import 'package:rxdart/rxdart.dart';

import '../core/either.dart';

export 'package:flutter_blue_plus/flutter_blue_plus.dart' show DeviceIdentifier;

class ShadowBluetoothDevice extends BaseShadowBluetoothDevice
    with EquatableMixin {
  ShadowBluetoothDevice({
    required this.device,
    required DeviceState currentState,
  }) : _currentState = currentState {
    _setupStateSubscription(device);
  }
  @protected
  final BluetoothDevice device;
  @override
  String get name => device.name;
  @override
  DeviceIdentifier get id => device.id;
  @override
  BluetoothDeviceType get type => device.type;

  @override
  FutureOr<Either<BluetoothOperationFailure, Stream<BluetoothDeviceState>>>
      get state => BluetoothOperationsProvider.call.state(() => device.state);
  @override
  FutureOr<Either<BluetoothOperationFailure, Stream<int>>> get mtu =>
      BluetoothOperationsProvider.call.mtu(device.id, () => device.mtu);
  @override
  FutureOr<Either<BluetoothOperationFailure, int>> requestMtu(int desiredMtu) =>
      BluetoothOperationsProvider.call
          .requestMtu(device.id, () => device.requestMtu(desiredMtu));
  @override
  FutureOr<Either<BluetoothOperationFailure, List<BluetoothService>>>
      discoverServices() => BluetoothOperationsProvider.call
          .discoverServices(device.discoverServices);
  @override
  FutureOr<Either<BluetoothOperationFailure, Stream<bool>>>
      get isDiscoveringServices =>
          BluetoothOperationsProvider.call.isDiscoveringServices(
            device.id,
            () => device.isDiscoveringServices,
          );

  ShadowBTService? shadowBTService;

  static Future<ShadowBluetoothDevice> create(
    BluetoothDevice device,
  ) async {
    final state = await device.state.first;
    return ShadowBluetoothDevice(
      device: device,
      currentState: DeviceState.fromFlutterBluePlus(state),
    );
  }

  static Future<ShadowBluetoothDevice> createInitialized(
    BluetoothDevice device,
  ) async {
    final state = await device.state.first;
    final deviceState = DeviceState.fromFlutterBluePlus(state);
    if (deviceState == DeviceState.connected) {
      return ShadowBluetoothDevice(
        device: device,
        currentState: DeviceState.connecting,
      ).._autoRetryConnect();
    }
    return ShadowBluetoothDevice(
      device: device,
      currentState: DeviceState.fromFlutterBluePlus(state),
    );
  }

  @override
  DeviceIdentifier get identifier => device.id;
  @override
  ValueStream<DeviceState> get deviceStateStream =>
      _deviceStateStreamController.stream;
  @override
  DeviceState get currentState => _currentState;

  late final StreamSubscription<BluetoothDeviceState>? _stateSubscription;
  late final BehaviorSubject<DeviceState> _deviceStateStreamController =
      BehaviorSubject.seeded(_currentState);

  DeviceState _currentState;

  @override
  Future<Either<Unit, Unit>> connect() async {
    if (currentState != DeviceState.available) return const Right(unit);
    return _autoRetryConnect();
  }

  @override
  Future<Either<String, Unit>> disconnect() async {
    if (currentState != DeviceState.connected) return const Right(unit);
    _setCurrentState(DeviceState.disconnecting);
    await device.disconnect();
    _setCurrentState(DeviceState.available);
    shadowBTService = null;
    return const Right(unit);
  }

  Future<Either<BluetoothOperationFailure, void>> initializeMtu(
    int desiredMtu,
  ) async {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _initializeMtuAndroid(desiredMtu);
      case TargetPlatform.iOS:
        return _initializeMtuIOS(desiredMtu);
      default:
        throw UnsupportedError(
          'Unsupported target platform: $defaultTargetPlatform',
        );
    }
  }

  @override
  void dispose() {
    _stateSubscription?.cancel();
    _deviceStateStreamController.close();
  }

  void _setupStateSubscription(BluetoothDevice device) =>
      _stateSubscription = device.state
          .where((event) => event == BluetoothDeviceState.disconnected)
          .listen((_) => disconnect());

  void _setCurrentState(DeviceState value) {
    if (_currentState == value) return;
    _currentState = value;
    _deviceStateStreamController.add(_currentState);
  }

  Future<Either<Unit, Unit>> _autoRetryConnect([
    int count = 0,
    int maxCount = 3,
  ]) async {
    count++;
    if (count > maxCount) return _onConnectFailed();
    return _connect().thenLeft((_) => _autoRetryConnect(count));
  }

  Future<Either<Unit, Unit>> _connect() async {
    try {
      _setCurrentState(DeviceState.connecting);
      await device.connect().timeout(const Duration(seconds: 15));
    } on TimeoutException {
      final option = await _checkConnectionStatusOnConnectTimeout();
      if (option.isLeft) return option;
    } on PlatformException catch (e) {
      switch (e.code) {
        case 'already_connected':
          break;
        case 'connect_failed':
        case 'connect_timeout':
        case 'connect_error':
        case 'reconnect_error':
          return _onConnectFailed();
        default:
          final code = "code: ${e.code}";
          final message = "message: ${e.message}";
          return _onConnectFailed();
      }
    } catch (e) {
      return const Left(unit);
    }
    final initializationOption = await _initialize();
    return initializationOption.fold((left) async {
      await device.disconnect();
      await Future.delayed(const Duration(seconds: 1));
      return const Left(unit);
    }, (right) {
      _setCurrentState(DeviceState.connected);
      return const Right(unit);
    });
  }

  Future<Either<Unit, Unit>> _checkConnectionStatusOnConnectTimeout() async {
    final state = await device.state.first;
    final deviceState = DeviceState.fromFlutterBluePlus(state);
    if (deviceState != DeviceState.connected) return const Left(unit);
    return const Right(unit);
  }

  Future<Left<Unit, Unit>> _onConnectFailed() async {
    _setCurrentState(DeviceState.available);
    await device.disconnect();
    return const Left(unit);
  }

  Future<Either<BluetoothOperationFailure, void>> _initializeMtuIOS(
    int desiredMtu,
  ) async =>
      const Right(null);

  Future<Either<BluetoothOperationFailure, void>> _initializeMtuAndroid(
    int desiredMtu,
  ) async {
    try {
      final currentMtu = await device.mtu.first;
      if (currentMtu == desiredMtu) return const Right(null);
      await (requestMtu(desiredMtu) as Future<Either>)
          .timeout(const Duration(seconds: 3))
          .mapLeft((left) => throw TimeoutException(''));

      return const Right(null);
    } on TimeoutException catch (_) {
      return Left(
        BluetoothOperationFailure(
          info: 'Could not set desired MTU size. '
              'Desired: $desiredMtu, got: timeout',
          stackTrace: StackTrace.empty,
          exception: null,
        ),
      );
    }
  }

  Future<Either<Unit, Unit>> _initialize() async {
    if (currentState != DeviceState.connecting) {
      return const Right(unit);
    }

    _setCurrentState(DeviceState.initializing);
    final initServiceOption = await _initializeServices();
    if (initServiceOption.isLeft) return const Left(unit);

    if (Platform.isIOS) return const Right(unit);
    return initializeMtu(180)
        .fold((left) => const Left(unit), (right) => const Right(unit));
  }

  Future<Either<Unit, Unit>> _initializeServices() async {
    final servicesOption = await discoverServices();
    if (servicesOption.isLeft) return const Left(unit);
    final services = servicesOption.right;
    final uartService = services
        .firstWhere((element) => element.uuid == ShadowBTServices.uartService);
    shadowBTService = ShadowBTService(uartService);

    return const Right(unit);
  }

  @override
  List<Object?> get props => [id];

  @override
  Future<Either<Unit, Unit>> firmwareVersionRequest() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.firmwareVersionRequest();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> testCommand() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.testCommand();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> getBootloaderVersion() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.getBootloaderVersion();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> getFrimwareName() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.getFrimwareName();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> rewritePin() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.rewritePin();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> sendConnectRequest() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.sendConnectRequest();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> setConfig() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.setConfig();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> setPin() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.setPin();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> setSecretCode() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.setSecretCode();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> setSerialNumber() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.setSerialNumber();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> firmwareSendKey() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.firmwareSendKey();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> firmwareSendPage(Uint8List data, int count) async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.firmwareSendPage(data, count);
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> firmwareSendStop() async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended = await shadowBTService!.firmwareSendStop();
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }

  @override
  Future<Either<Unit, Unit>> updateStartCommand(
      String firmwareName, int pagesCount) async {
    if (currentState != DeviceState.connected) return const Right(unit);

    return ServiceAvailability().check<Either<Unit, Unit>>(
      onEnabled: () async {
        final sended =
            await shadowBTService!.updateStartCommand(firmwareName, pagesCount);
        if (sended) {
          return const Right(unit);
        }
        return const Left(unit);
      },
    ).expandLeft((_) => unit);
  }
}
