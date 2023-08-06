part of 'base_command.dart';

class FirmwareUpdateResultCommand extends BaseReadCommand {
  final bool result;
  final List<int> info;

  FirmwareUpdateResultCommand({
    required this.result,
    required this.info,
    required int commandCode,
    required int packetId,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
