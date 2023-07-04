part of 'base_command.dart';

class BaseAnswerCommand extends BaseReadCommand {
  final bool result;
  final List<int> info;

  BaseAnswerCommand({
    required this.result,
    required this.info,
    required int commandCode,
    required int packetId,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
