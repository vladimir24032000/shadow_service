import 'package:bluetooth_package/src/shadow/protocol/commands_write/base_command.dart';

class SetConfigCommand extends BaseWriteCommand {
  SetConfigCommand({required int packetId})
      : super(
          commandCode: 0x2A,
          packetId: packetId,
        );

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.addAll([0, 1, 0]);
    bytes[3] = bytes.length;
    return bytes;
  }
}
