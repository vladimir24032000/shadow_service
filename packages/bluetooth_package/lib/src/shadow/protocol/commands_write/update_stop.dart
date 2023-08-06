part of 'base_command.dart';

class UpdateStopCommand extends BaseWriteCommand {
  UpdateStopCommand()
      : super(
          commandCode: 0x35,
          confiramtionCommandCode: 0x04,
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
