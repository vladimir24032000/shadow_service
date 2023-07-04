part of 'base_command.dart';

class GetBootloaderVersionCommand extends BaseReadCommand {
  final int majorVersion;
  final int minorVersion;
  DateTime dateTime;
  GetBootloaderVersionCommand({
    required int commandCode,
    required int packetId,
    required this.majorVersion,
    required this.minorVersion,
    required this.dateTime,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
