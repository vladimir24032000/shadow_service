part of 'base_command.dart';

class FirmwareSendPagesCommand extends BaseWriteCommand {
  FirmwareSendPagesCommand({required this.data, required this.count})
      : super(
          commandCode: 0x34,
        ) {
    confiramtionCommandCode = 0x04;
  }
  final Uint8List data;
  final int count;
  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());

    bytes.add(commandCode);

    bytes.add(0);
    bytes.addAll(uint16ToBytes(count));
    bytes.addAll(data);

    bytes[3] = bytes.length;
    return bytes;
  }
}
