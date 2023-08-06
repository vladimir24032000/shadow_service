part of 'base_command.dart';

class FirmwareSendKeyCommand extends BaseWriteCommand {
  FirmwareSendKeyCommand()
      : super(
          commandCode: 0x33,
          confiramtionCommandCode: 0x04,
        );
  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());

    bytes.add(commandCode);

    bytes.add(0);

    final aesKey = List.generate(32, (index) => 0);
    final rubbish = List.generate(32, (index) => 0);

    bytes.addAll(aesKey);
    bytes.addAll(rubbish);
    bytes[3] = bytes.length;
    return bytes;
  }
}
