import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class ShadowBTUUID extends Guid {
  ShadowBTUUID({required String offset}) : super(_prefix + offset + _suffix);
  static const _prefix = '8987';
  static const _suffix = '0938403FA6B07BFDAB26629B';
}

class CommonBTUUID extends Guid {
  CommonBTUUID({required String offset}) : super(_prefix + offset + _suffix);
  static const _prefix = '0000';
  static const _suffix = '00001000800000805f9b34fb"';
}

class ShadowBTServices {
  static final deviceAdvertising = ShadowBTUUID(offset: '814B');
  static final forceInsoleMeas = ShadowBTUUID(offset: '0500');
  static final deviceInfo = CommonBTUUID(offset: "180a");
}

class ShadowBTCharacteristics {
  static final forceMeasurement = ShadowBTUUID(offset: '3000');
  static final timeSync = ShadowBTUUID(offset: '4000');
  static final sensorProperties = ShadowBTUUID(offset: '5000');
  static final sensorSettings = ShadowBTUUID(offset: '6000');

  static final firmwareRevison = CommonBTUUID(offset: '2a26');
  static final hardwareRevision = CommonBTUUID(offset: '2a27');
  static final softwareRevision = CommonBTUUID(offset: '2a28');
}

//class CommonBTCharacteristics {}

// For more service uuids see:
// https://gist.github.com/sam016/4abe921b5a9ee27f67b3686910293026
class BluetoothLowEnergyServices {
  static final battery = CommonBTUUID(offset: '180f');
}
