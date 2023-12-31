part of 'base_command.dart';

class GetSerialNumberCommand extends BaseReadCommand {
  final List<int> serialNumber;

  GetSerialNumberCommand({
    required this.serialNumber,
    required int commandCode,
    required int packetId,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
