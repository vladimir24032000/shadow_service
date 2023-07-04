part of 'base_command.dart';

class GetSecretCodeCommand extends BaseReadCommand {
  final List<int> secretCode;
  GetSecretCodeCommand({
    required int commandCode,
    required int packetId,
    required this.secretCode,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
