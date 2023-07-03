import 'package:bluetooth_package/src/shadow/protocol/commands_read/base_command.dart';

class GetSerialNumberCommand extends BaseReadCommand {
  final bool result;
  final List<int> info;

  GetSerialNumberCommand(
      {required this.result,
      required this.info,
      required int commandCode,
      required int packetId})
      : super(commandCode: commandCode, packetId: packetId);
}
