part of 'base_command.dart';

class RequestFirmwareNameCommand extends BaseWriteCommand {
  RequestFirmwareNameCommand()
      : super(
          commandCode: 0x30,
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
