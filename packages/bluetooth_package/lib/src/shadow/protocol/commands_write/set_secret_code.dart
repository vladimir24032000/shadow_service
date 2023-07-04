part of 'base_command.dart';

class SetSecretCodeCommand extends BaseWriteCommand {
  SetSecretCodeCommand()
      : super(
          commandCode: 0x24,
        );

  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    bytes.addAll([1, 2, 3, 6]);
    bytes[3] = bytes.length;
    return bytes;
  }
}
