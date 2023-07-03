import 'package:bluetooth_package/src/shadow/protocol/commands_write/base_command.dart';

class SetSerialNumberCommand extends BaseWriteCommand {
  SetSerialNumberCommand({required int packetId})
      : super(commandCode: 0x24, packetId: packetId);

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.addAll([1, 2, 3, 6]);
    bytes[3] = bytes.length;
    return bytes;
  }
}
