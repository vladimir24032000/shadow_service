part of 'base_command.dart';

class SetConfigCommand extends BaseWriteCommand {
  SetConfigCommand()
      : super(
          commandCode: 0x2A,
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
