import 'package:bluetooth_package/src/shadow/protocol/commands_read/base_command.dart';

class ConnectResponseCommand extends BaseReadCommand {
  final DateTime dateTime;
  final List<int> appId;
  final List<int> serialNumber;
  final bool lastConnectResult;
  final List<int> randomNumber;

  ConnectResponseCommand(
      {required this.dateTime,
      required this.appId,
      required this.serialNumber,
      required this.lastConnectResult,
      required this.randomNumber,
      required int commandCode,
      required int packetId})
      : super(commandCode: commandCode, packetId: packetId);
}
