part of 'base_command.dart';

class GetPinCommand extends BaseReadCommand {
  final List<int> pin;
  GetPinCommand({
    required int commandCode,
    required int packetId,
    required this.pin,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
