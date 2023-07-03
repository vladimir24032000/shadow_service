import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class ShadowBTUUID extends Guid {
  ShadowBTUUID({required String offset}) : super(_prefix + offset + _suffix);
  static const _prefix = '0000';
  static const _suffix = '51a1efde1523785feabcd123';
}

class CommonBTUUID extends Guid {
  CommonBTUUID({required String offset}) : super(_prefix + offset + _suffix);
  static const _prefix = '0000';
  static const _suffix = '00001000800000805f9b34fb"';
}

class ShadowBTServices {
  static final deviceAdvertising = ShadowBTUUID(offset: '5123');
  static final uartService = ShadowBTUUID(offset: '5123');
}

class ShadowBTCharacteristics {
  static final tx = ShadowBTUUID(offset: '5125');
  static final rx = ShadowBTUUID(offset: '5124');
}

//class CommonBTCharacteristics {}

// For more service uuids see:
// https://gist.github.com/sam016/4abe921b5a9ee27f67b3686910293026
class BluetoothLowEnergyServices {
  static final battery = CommonBTUUID(offset: '180f');
}
