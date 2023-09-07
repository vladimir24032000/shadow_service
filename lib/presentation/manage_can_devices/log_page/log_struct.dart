import 'dart:typed_data';

class LogStruct {
  late int number;
  late int count;
  late int time;
  late int id;
  late int devStatus;
  late Uint8List description;
  late Uint8List allBytes;

  LogStruct.fromBytes(Uint8List bytes) {
    number = bytesToUint32(bytes.sublist(0, 4));
    count = bytesToUint32(bytes.sublist(4, 8));
    time = bytesToUint32(bytes.sublist(8, 12));
    id = bytesToUint16(bytes.sublist(12, 14));
    devStatus = bytesToUint32(bytes.sublist(14, 18));
    description = bytes.sublist(18, 32);
  }

  @override
  String toString() {
    return "${number.toString()}\t${count.toString()}\t${time.toString()}\t0x${id.toRadixString(16)}\t${devStatus.toString()}" +
        "\t${[for (final byte in description) '0x' + byte.toRadixString(16)]}";
  }

  LogStruct(
      {required this.number,
      required this.count,
      required this.time,
      required this.id,
      required this.devStatus,
      required this.description,
      required this.allBytes});

  int bytesToUint32(List<int> payload) {
    final byteData = ByteData(4);

    byteData.setUint8(0, payload[0]);
    byteData.setUint8(1, payload[1]);
    byteData.setUint8(2, payload[2]);
    byteData.setUint8(3, payload[3]);

    return byteData.getUint32(0, Endian.little);
  }

  int bytesToUint16(List<int> payload) {
    final byteData = ByteData(2);

    byteData.setUint8(0, payload[0]);
    byteData.setUint8(1, payload[1]);

    return byteData.getUint16(0, Endian.little);
  }
}
