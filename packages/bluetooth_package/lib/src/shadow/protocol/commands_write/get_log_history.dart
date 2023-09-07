part of 'base_command.dart';

class GetLogHistoryCommand extends BaseWriteCommand {
  GetLogHistoryCommand({required this.logMin, required this.logMax})
      : super(
          commandCode: 0x13,
        );
  final int logMin;
  final int logMax;

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.addAll(uint16ToBytes(logMin));
    bytes.addAll(uint16ToBytes(logMax));
    bytes[3] = bytes.length;
    return bytes;
  }
}
