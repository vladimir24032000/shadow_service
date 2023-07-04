part of 'base_command.dart';

class GetConfigCommand extends BaseReadCommand {
  final bool antiRobbery;
  final bool locked;
  final bool autoExit;
  GetConfigCommand({
    required int commandCode,
    required int packetId,
    required this.antiRobbery,
    required this.locked,
    required this.autoExit,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
