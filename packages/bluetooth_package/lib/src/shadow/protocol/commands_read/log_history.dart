part of 'base_command.dart';

class LogHistoryCommand extends BaseReadCommand {
  final bool isLog;
  final int logPackageCount;
  final List<int> logPacakge;

  LogHistoryCommand({
    required this.logPacakge,
    required this.isLog,
    required this.logPackageCount,
    required int commandCode,
    required int packetId,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
