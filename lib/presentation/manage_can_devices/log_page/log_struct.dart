import 'dart:typed_data';

class LogStruct {
  final int number;
  final int count;
  final Duration time;
  final int id;
  final int devStatus;
  final Uint8List description;

  LogStruct(
      {required this.number,
      required this.count,
      required this.time,
      required this.id,
      required this.devStatus,
      required this.description});
}
