part of 'base_command.dart';

class RewritePinCommand extends BaseWriteCommand {
  RewritePinCommand()
      : super(
          commandCode: 0x28,
        );

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
