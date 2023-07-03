import 'package:bluetooth_package/src/shadow/protocol/commands_read/base_command.dart';

class BaseAnswerCommand extends BaseReadCommand {
  final bool result;
  final List<int> info;

  BaseAnswerCommand(
      {required this.result,
      required this.info,
      required int commandCode,
      required int packetId})
      : super(commandCode: commandCode, packetId: packetId);
}
