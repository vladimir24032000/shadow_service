part of 'base_command.dart';

class IsLogHistoryCommand extends BaseWriteCommand {
  IsLogHistoryCommand({required this.logSubscribe})
      : super(
          commandCode: 0x10,
        );
  final bool logSubscribe;
  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.add(logSubscribe == true ? 1 : 0);
    bytes[3] = bytes.length;
    return bytes;
  }
}
