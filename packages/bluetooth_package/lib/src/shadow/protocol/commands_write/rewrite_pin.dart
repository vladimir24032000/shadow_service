import 'package:bluetooth_package/src/shadow/protocol/commands_write/base_command.dart';

class RewritePinCommand extends BaseWriteCommand {
  RewritePinCommand({required int packetId})
      : super(commandCode: 0x28, packetId: packetId);

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.addAll([0, 0, 0, 0, 0, 0]);
    bytes.addAll([0, 0, 0, 0, 0, 1]);
    bytes[3] = bytes.length;
    return bytes;
  }
}