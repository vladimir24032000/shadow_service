import 'package:flutter_blue_plus/flutter_blue_plus.dart';

const bluetoothEnabledSteamDuration = Duration(milliseconds: 500);

class Bluetooth {
  const Bluetooth._();
  factory Bluetooth() => instance;
  static const instance = Bluetooth._();

  Future<void> turnOn() => FlutterBluePlus.instance.turnOn();

  Future<bool> get isOn => FlutterBluePlus.instance.isOn;

  Stream<bool> get isOnStream => FlutterBluePlus.instance.state
      .map((state) => state == BluetoothState.on)
      .distinct();
}
