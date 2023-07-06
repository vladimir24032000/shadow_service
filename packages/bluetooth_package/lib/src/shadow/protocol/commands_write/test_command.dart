part of 'base_command.dart';

class TestCommand extends BaseWriteCommand {
  TestCommand()
      : super(
          commandCode: 0x12,
        );

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.addAll([1, 2, 3, 4, 5, 6, 7]);
    bytes[3] = bytes.length;
    return bytes;
  }
}
