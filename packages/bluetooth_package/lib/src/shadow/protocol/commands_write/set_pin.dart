part of 'base_command.dart';

class SetPinCommand extends BaseWriteCommand {
  SetPinCommand()
      : super(
          commandCode: 0x26,
        );

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.addAll([0, 0, 0, 0, 0, 0]);
    bytes[3] = bytes.length;
    return bytes;
  }
}
