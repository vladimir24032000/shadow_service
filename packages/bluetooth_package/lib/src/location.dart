import 'package:geolocator/geolocator.dart';

const bluetoothEnabledSteamDuration = Duration(milliseconds: 500);

class Location {
  const Location._();
  factory Location() => instance;
  static const instance = Location._();

  Future<bool> get isOn => Geolocator.isLocationServiceEnabled();

  Stream<bool> get isOnStream => Geolocator.getServiceStatusStream()
      .map((state) => state == ServiceStatus.enabled)
      .distinct();
}
