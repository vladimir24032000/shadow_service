part of 'base_command.dart';

enum DeviceLogLevel { zero, one, two, three }

class SetLogLevelCommand extends BaseWriteCommand {
  SetLogLevelCommand({required this.logLevel})
      : super(
          commandCode: 0x11,
          confiramtionCommandCode: 0x04,
        );

  final int logLevel;
  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());

    bytes.add(commandCode);

    bytes.add(0);
    bytes.add(logLevel);

    bytes[3] = bytes.length;
    return bytes;
  }
}
