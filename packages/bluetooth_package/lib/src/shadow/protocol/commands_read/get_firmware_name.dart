part of 'base_command.dart';

class GetFirmwareNameCommand extends BaseReadCommand {
  final String name;
  GetFirmwareNameCommand({
    required int commandCode,
    required int packetId,
    required this.name,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
