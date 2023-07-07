part of 'base_command.dart';

class UpdateStartCommand extends BaseWriteCommand {
  UpdateStartCommand({
    required this.firmwareName,
    required this.crc,
  }) : super(
          commandCode: 0x32,
        );
  final String firmwareName;
  final Uint8List crc;
  @override
  List<int> toBytes() {
    final bytes = <int>[];
    bytes.addAll(packetIdToPayload());
    bytes.add(commandCode);
    bytes.add(0);
    final firmwareNameBytes = List.generate(64, (index) => 0);
    final encoded = ascii.encode(firmwareName);
    for (var i = 0; i < firmwareNameBytes.length && i < encoded.length; i++) {
      firmwareNameBytes[i] = encoded[i];
    }
    bytes.addAll(crc);
    bytes.addAll(List.generate(16, (index) => 0));
    bytes[3] = bytes.length;
    return bytes;
  }
}
