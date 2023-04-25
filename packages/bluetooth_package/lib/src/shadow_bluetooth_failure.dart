import 'package:freezed_annotation/freezed_annotation.dart';

part 'shadow_bluetooth_failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.bluetoothIsOff() = BluetoothIsOff;
  const factory Failure.locationServicesAreOff() = GpsIsOff;
}
