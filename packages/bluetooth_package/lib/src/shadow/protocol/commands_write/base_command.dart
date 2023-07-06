import 'dart:typed_data';
part 'connect_request.dart';
part 'firmware_version_request.dart';
part 'get_bootloader_version.dart';
part 'set_serial_number.dart';
part 'set_secret_code.dart';
part 'set_pin.dart';
part 'set_config.dart';
part 'get_firmware_name.dart';
part 'rewrite_pin.dart';
part 'test_command.dart';

abstract class BaseWriteCommand {
  final int commandCode;
  int packetId = 0;
  final protocolVersion = 1;

  BaseWriteCommand({
    required this.commandCode,
  });
  List<int> toBytes();

  List<int> packetIdToPayload() {
    final byteData = ByteData(2);
    byteData.setUint16(0, packetId, Endian.little);
    return byteData.buffer.asUint8List();
  }

  List<int> dateTimeToPayload(DateTime dateTime) {
    final payload = List.generate(6, (index) => 0);
    payload[0] = dateTime.year - 2000;
    payload[1] = dateTime.month;
    payload[2] = dateTime.day;
    payload[3] = dateTime.hour;
    payload[4] = dateTime.minute;
    payload[5] = dateTime.second;
    return payload;
  }
}
