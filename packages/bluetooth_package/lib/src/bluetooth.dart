import 'package:flutter_blue_plus/flutter_blue_plus.dart';

const bluetoothEnabledSteamDuration = Duration(milliseconds: 500);

class Bluetooth {
  const Bluetooth._();
  factory Bluetooth() => instance;
  static const instance = Bluetooth._();

  Future<void> turnOn() => FlutterBluePlus.turnOn();

  // Future<bool> get isOn => FlutterBluePlus.isOn;

  Stream<bool> get isOnStream => FlutterBluePlus.adapterState
      .map((state) => state == BluetoothAdapterState.on)
      .distinct();
}
