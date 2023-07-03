import 'package:bluetooth_package/src/shadow/protocol/commands_write/base_command.dart';

class ConnectRequstCommand extends BaseWriteCommand {
  ConnectRequstCommand({required int packetId})
      : super(commandCode: 0x03, packetId: packetId);

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.addAll(List.generate(32, (index) => 0));
    bytes[3] = bytes.length;
    return bytes;
  }
}
