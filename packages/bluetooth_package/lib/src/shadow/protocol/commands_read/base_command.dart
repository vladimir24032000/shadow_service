import 'dart:convert';
import 'dart:typed_data';

part 'connect_response.dart';
part 'base_answer.dart';
part 'get_bootloader_version.dart';
part 'get_config.dart';
part 'get_pin.dart';
part 'get_secret_code.dart';
part 'get_serial_number.dart';
part 'unknown_command.dart';
part 'get_firmware_name.dart';

abstract class BaseReadCommand {
  final int commandCode;
  final int packetId;
  final protocolVersion = 1;
  final List<int> bytes;

  BaseReadCommand({
    required this.commandCode,
    required this.packetId,
    required this.bytes,
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
        if (bytes.length < 36) {
          return UnknownCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
          );
        }
        return ConnectResponseCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            dateTime: payloadToDateTime(bytes.sublist(5, 11)),
            appId: bytes.sublist(12, 28),
            commandCode: bytes[2],
            lastConnectResult: bytes[37] == 1,
            randomNumber: bytes.sublist(38),
            serialNumber: bytes.sublist(29, 36));
      case 0x04:
        if (bytes.length < 5) {
          return UnknownCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
          );
        }
        return BaseAnswerCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
            result: bytes[4] == 1,
            info: bytes.sublist(5));
      case 0x23:
        if (bytes.length < 4) {
          return UnknownCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
          );
        }
        return GetSerialNumberCommand(
          bytes: bytes,
          packetId: packetIdFromPayload(bytes.sublist(0, 2)),
          commandCode: bytes[2],
          serialNumber: bytes.sublist(4),
        );
      case 0x25:
        if (bytes.length < 4) {
          return UnknownCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
          );
        }
        return GetSecretCodeCommand(
          bytes: bytes,
          packetId: packetIdFromPayload(bytes.sublist(0, 2)),
          commandCode: bytes[2],
          secretCode: bytes.sublist(4),
        );
      case 0x27:
        if (bytes.length < 4) {
          return UnknownCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
          );
        }
        return GetPinCommand(
          bytes: bytes,
          packetId: packetIdFromPayload(bytes.sublist(0, 2)),
          commandCode: bytes[2],
          pin: bytes.sublist(4),
        );
      case 0x2B:
        if (bytes.length < 7) {
          return UnknownCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
          );
        }
        return GetConfigCommand(
          bytes: bytes,
          packetId: packetIdFromPayload(bytes.sublist(0, 2)),
          commandCode: bytes[2],
          antiRobbery: bytes[4] == 1,
          locked: bytes[5] == 1,
          autoExit: bytes[6] == 1,
        );
      case 0x2D:
        if (bytes.length < 9) {
          return UnknownCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
          );
        }
        return GetBootloaderVersionCommand(
          bytes: bytes,
          packetId: packetIdFromPayload(bytes.sublist(0, 2)),
          commandCode: bytes[2],
          majorVersion: bytes[4],
          minorVersion: bytes[5],
          dateTime: DateTime(bytes[6] + 2000, bytes[7], bytes[8]),
        );
      case 0x31:
        if (bytes.length < 4) {
          return UnknownCommand(
            bytes: bytes,
            packetId: packetIdFromPayload(bytes.sublist(0, 2)),
            commandCode: bytes[2],
          );
        }
        return GetFirmwareNameCommand(
          bytes: bytes,
          packetId: packetIdFromPayload(bytes.sublist(0, 2)),
          commandCode: bytes[2],
          name: ascii.decode(bytes.sublist(4)),
        );

      default:
        return UnknownCommand(
          bytes: bytes,
          packetId: packetIdFromPayload(bytes.sublist(0, 2)),
          commandCode: bytes[2],
        );
    }
  }
}
