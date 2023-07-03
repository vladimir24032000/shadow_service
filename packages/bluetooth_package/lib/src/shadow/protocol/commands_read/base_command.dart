import 'dart:typed_data';

import 'package:bluetooth_package/src/shadow/protocol/commands_read/base_answer.dart';
import 'package:bluetooth_package/src/shadow/protocol/commands_read/connect_response.dart';

abstract class BaseReadCommand {
  final int commandCode;
  final int packetId;
  final protocolVersion = 1;

  BaseReadCommand({
    required this.commandCode,
    required this.packetId,
  });
  factory BaseReadCommand.fromBytes(List<int> bytes) {
    int packetIdFromPayload(List<int> payload) {
      final byteData = ByteData(2);

      byteData.setUint8(0, payload[1]);
      byteData.setUint8(1, payload[0]);

      return byteData.getUint16(0, Endian.little);
    }

    DateTime payloadToDateTime(List<int> payload) {
      return DateTime(payload[0] + 2000, payload[1], payload[2], payload[3],
          payload[4], payload[5]);
    }

    switch (bytes[2]) {
      case 0x02:
        return ConnectResponseCommand(
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            dateTime: payloadToDateTime(bytes.sublist(5, 11)),
            appId: bytes.sublist(12, 28),
            commandCode: bytes[2],
            lastConnectResult: bytes[37] == 1,
            randomNumber: bytes.sublist(38),
            serialNumber: bytes.sublist(29, 36));
      case 0x04:
        return BaseAnswerCommand(
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
            result: bytes[4] == 1,
            info: bytes.sublist(5));
      default:
        throw Exception("Command not found");
    }
  }
}
