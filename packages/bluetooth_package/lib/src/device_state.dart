import 'package:flutter_blue_plus/flutter_blue_plus.dart';

enum DeviceState {
  available,
  connecting,
  initializing,
  connected,
  disconnecting;

  static DeviceState fromFlutterBluePlus(BluetoothConnectionState state) {
    switch (state) {
      case BluetoothConnectionState.disconnected:
        return DeviceState.available;
      case BluetoothConnectionState.connecting:
        return DeviceState.connecting;
      case BluetoothConnectionState.connected:
        return DeviceState.connected;
      case BluetoothConnectionState.disconnecting:
        return DeviceState.disconnecting;
    }
  }
}
