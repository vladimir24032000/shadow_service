import 'dart:async';
import 'dart:io';

import 'package:either_dart/either.dart';

import 'bluetooth.dart';
import 'shadow_bluetooth_failure.dart';
import 'location.dart';

class ServiceAvailability {
  ServiceAvailability._forInitializationOnly()
      : _isBluetoothEnabled = false,
        _isGpsEnabled = false;

  ServiceAvailability._(this._isBluetoothEnabled, this._isGpsEnabled) {
    _bluetoothSubscription =
        Bluetooth().isOnStream.listen((event) => _isBluetoothEnabled = event);
    _gpsSubscription =
        Location().isOnStream.listen((event) => _isGpsEnabled = event);
  }

  factory ServiceAvailability() => _instance;
  static ServiceAvailability get instance => _instance;
  static ServiceAvailability _instance = _Initializing._();

  late final StreamSubscription<bool> _bluetoothSubscription;
  late final StreamSubscription<bool> _gpsSubscription;

  bool _isBluetoothEnabled;
  bool _isGpsEnabled;

  Future<Either<Failure, R>> check<R>({
    required FutureOr<R> Function() onEnabled,
  }) async =>
      _checkBluetoothAvailability(
        onEnabled: () => _checkGpsAvailability(
          onEnabled: () async => Right(await onEnabled()),
          onDisabled: () => const Left(GpsIsOff()),
        ),
        onDisabled: () => const Left(BluetoothIsOff()),
      );

  T _checkBluetoothAvailability<T>({
    required T Function() onEnabled,
    required T Function() onDisabled,
  }) =>
      _isBluetoothEnabled ? onEnabled() : onDisabled();

  T _checkGpsAvailability<T>({
    required T Function() onEnabled,
    required T Function() onDisabled,
  }) {
    if (Platform.isIOS) return onEnabled();
    return _isGpsEnabled ? onEnabled() : onDisabled();
  }

  Future<void> dispose() => Future.wait([
        _bluetoothSubscription.cancel(),
        _gpsSubscription.cancel(),
      ]);
}

class _Initializing extends ServiceAvailability {
  _Initializing._() : super._forInitializationOnly() {
    Bluetooth().isOn.then(_bluetoothInitialized.complete);

    if (Platform.isIOS) {
      _gpsInitialized.complete(true);
    } else {
      Location().isOn.then(_gpsInitialized.complete);
    }
  }

  final Completer<bool> _bluetoothInitialized = Completer();
  final Completer<bool> _gpsInitialized = Completer();

  @override
  Future<Either<Failure, R>> check<R>({
    required FutureOr<R> Function() onEnabled,
  }) async =>
      _waitForIsInitializated(
        onInitialized: (instance) => instance.check(
          onEnabled: onEnabled,
        ),
      );

  Future<T> _waitForIsInitializated<T>({
    required FutureOr<T> Function(ServiceAvailability) onInitialized,
  }) async {
    final values = await Future.wait([
      _bluetoothInitialized.future,
      _gpsInitialized.future,
    ]);
    if (ServiceAvailability._instance is _Initializing) {
      ServiceAvailability._instance =
          ServiceAvailability._(values[0], values[1]);
    }
    return onInitialized(ServiceAvailability._instance);
  }
}
