part of 'base_command.dart';

class GetBootLoaderVersionCommand extends BaseWriteCommand {
  GetBootLoaderVersionCommand()
      : super(
          commandCode: 0x2C,
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
