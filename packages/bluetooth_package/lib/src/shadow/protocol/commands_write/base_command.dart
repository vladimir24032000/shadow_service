import 'dart:typed_data';

abstract class BaseWriteCommand {
  final int commandCode;
  final int packetId;
  final protocolVersion = 1;

  BaseWriteCommand({
    required this.commandCode,
    required this.packetId,
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
