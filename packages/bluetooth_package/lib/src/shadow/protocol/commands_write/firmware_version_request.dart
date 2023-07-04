part of 'base_command.dart';

class FirmwareVersionRequestCommand extends BaseWriteCommand {
  FirmwareVersionRequestCommand()
      : super(
          commandCode: 0x03,
        );

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
