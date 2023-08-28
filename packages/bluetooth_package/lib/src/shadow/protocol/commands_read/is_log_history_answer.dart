part of 'base_command.dart';

class IsLogHistoryAnswerCommand extends BaseReadCommand {
  final DeviceLogLevel logLevel;
  final bool logSubscribe;
  final bool isLog;
  final int logsLength;
  final bool isErrors;
  final int errorsLength;

  IsLogHistoryAnswerCommand({
    required this.logLevel,
    required this.logSubscribe,
    required this.isLog,
    required this.logsLength,
    required this.isErrors,
    required this.errorsLength,
    required int commandCode,
    required int packetId,
    required List<int> bytes,
  }) : super(commandCode: commandCode, packetId: packetId, bytes: bytes);
}
