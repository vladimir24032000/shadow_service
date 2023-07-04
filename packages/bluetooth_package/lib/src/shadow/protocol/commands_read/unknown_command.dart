part of 'base_command.dart';

class UnknownCommand extends BaseReadCommand {
  UnknownCommand({
    required int commandCode,
    required int packetId,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
