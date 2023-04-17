import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:bluetooth_package/src/shadow/base_device.dart';
import 'package:bluetooth_package/src/shadow/bluetooth_device.dart';
import 'package:bluetooth_package/src/shadow/mock_device/mock_device.dart';
import 'package:bluetooth_package/src/shadow/protocol/constants.dart';
import 'package:rxdart/rxdart.dart';

import 'bluetooth_util/bluetooth_operations.dart';
import 'bluetooth_util/bluetooth_operations_provider.dart';

class Scan {
  Scan._();
  factory Scan() => _instance;
  static final _instance = Scan._();

  Stream<bool> get isScanningStream => _scanStreamController.stream;
  bool get isScanning => _scanStreamController.value;

  final _scanStreamController = BehaviorSubject<bool>.seeded(false);

  Future<void> start({
    ScanMode scanMode = ScanMode.lowLatency,
    Duration scanDuration = const Duration(seconds: 30),
    required void Function(BaseShadowBluetoothDevice) onNewScanResult,
  }) =>
      _handleMultipleScanCalls(
        scanMode: scanMode,
        scanDuration: scanDuration,
        onNewScanResult: onNewScanResult,
      );

  FutureOr<Either<BluetoothOperationFailure, void>> stop() =>
      _handleMultipleStopCalls();

  Future<void> _handleMultipleScanCalls({
    ScanMode scanMode = ScanMode.lowLatency,
    Duration scanDuration = const Duration(seconds: 30),
    required void Function(BaseShadowBluetoothDevice) onNewScanResult,
  }) async {
    if (isScanning) return;
    _scanStreamController.add(true);
    if (kDebugMode) {
      await Future.delayed(const Duration(milliseconds: 500));
      onNewScanResult(MockDevice.createLeftSinInsole());
      await Future.delayed(const Duration(milliseconds: 500));
      onNewScanResult(MockDevice.createRightSinInsole());
      await Future.delayed(const Duration(milliseconds: 500));
      onNewScanResult(MockDevice.createLeftInsoleRealSteps());
      await Future.delayed(const Duration(milliseconds: 500));
      onNewScanResult(MockDevice.createRightInsoleRealSteps());
      await Future.delayed(const Duration(milliseconds: 500));
    }
    await _scan(scanMode, scanDuration, onNewScanResult);

    debugPrint('Scan finished');
    _scanStreamController.add(false);
  }

  Future<void> _scan(
    ScanMode scanMode,
    Duration scanDuration,
    void Function(BaseShadowBluetoothDevice) onNewScanResult,
  ) =>
      FlutterBluePlus.instance
          .scan(scanMode: scanMode, timeout: scanDuration)
          .where((e) => e.advertisementData.serviceUuids
              .where((e) => e.length == 36)
              .any(_isAdvertisingId))
          .map((e) => e.device)
          .asyncMap(ShadowBluetoothDevice.create)
          .listen(onNewScanResult)
          .asFuture();

  bool _isAdvertisingId(String uuid) =>
      Guid(uuid) == ShadowBTServices.deviceAdvertising;

  FutureOr<Either<BluetoothOperationFailure, void>>
      _handleMultipleStopCalls() async {
    if (!isScanning) return const Right(null);
    _scanStreamController.add(false);
    await BluetoothOperationsProvider.call.stopScan<void>(
      () => FlutterBluePlus.instance.stopScan(),
    );
    return const Right(null);
  }
}
