import 'package:bluetooth_package/src/shadow/protocol/commands_write/base_command.dart';

class GetBootLoaderVersionCommand extends BaseWriteCommand {
  GetBootLoaderVersionCommand({required int packetId})
      : super(
          commandCode: 0x2C,
          packetId: packetId,
        );

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes[3] = bytes.length;
    return bytes;
  }
}
