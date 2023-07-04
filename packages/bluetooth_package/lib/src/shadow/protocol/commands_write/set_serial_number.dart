part of 'base_command.dart';

class SetSerialNumberCommand extends BaseWriteCommand {
  SetSerialNumberCommand()
      : super(
          commandCode: 0x22,
        );

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.addAll([13, 21, 11, 23, 11, 33, 48]);
    bytes[3] = bytes.length;
    return bytes;
  }
}
