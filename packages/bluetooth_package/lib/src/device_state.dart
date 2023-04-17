import 'package:flutter_blue_plus/flutter_blue_plus.dart';

enum DeviceState {
  available,
  connecting,
  initializing,
  connected,
  disconnecting;

  static DeviceState fromFlutterBluePlus(BluetoothDeviceState state) {
    switch (state) {
      case BluetoothDeviceState.disconnected:
        return DeviceState.available;
      case BluetoothDeviceState.connecting:
        return DeviceState.connecting;
      case BluetoothDeviceState.connected:
        return DeviceState.connected;
      case BluetoothDeviceState.disconnecting:
        return DeviceState.disconnecting;
    }
  }
}
