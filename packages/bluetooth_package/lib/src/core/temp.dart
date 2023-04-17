import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Stream<T> onceAndPeriodic<T>(
  Duration period,
  FutureOr<T> Function() computation,
) async* {
  yield await computation();
  yield* Stream<FutureOr<T>>.periodic(period, (_) => computation())
      .asyncMap((event) => event);
}

extension XStream<T> on Stream<T> {
  Stream<T> whereNot(bool Function(T event) test) =>
      where((event) => !test(event));
}

class GetDeviceFailure {
  const GetDeviceFailure({
    required this.id,
    required this.stackTrace,
    this.exception,
  });

  final DeviceIdentifier id;
  final StackTrace stackTrace;
  final dynamic exception;
}

class ConnectedDevicesException implements Exception {}

class MeasureServiceException implements Exception {}
