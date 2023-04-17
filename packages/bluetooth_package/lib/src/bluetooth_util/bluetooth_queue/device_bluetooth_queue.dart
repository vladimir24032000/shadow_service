import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import 'bluetooth_queue.dart';

class DeviceBluetoothQueue extends BluetoothQueue {
  DeviceBluetoothQueue(
    this.id, {
    super.delay,
  });

  final DeviceIdentifier id;
}
