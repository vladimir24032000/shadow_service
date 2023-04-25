import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lock_screen_state.dart';
part 'lock_screen_cubit.freezed.dart';

class LockScreenCubit extends Cubit<LockScreenState> {
  LockScreenCubit() : super(const Preparing());

  void init() async {
    if (Platform.isAndroid) {
      const storage = FlutterSecureStorage(
          aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ));
      final pin = await storage.read(key: "PIN");
      if (pin == null) {
        emit(const LockScreenState.createPin());
      } else {
        emit(LockScreenState.hasPin(pin: pin));
      }
    } else {
      const storage = FlutterSecureStorage();
      final pin = await storage.read(key: "PIN");
      if (pin == null) {
        emit(const LockScreenState.createPin());
      } else {
        emit(LockScreenState.hasPin(pin: pin));
      }
    }
  }

  void cleanPin() async {
    if (Platform.isAndroid) {
      const storage = FlutterSecureStorage(
          aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ));
      await storage.delete(key: "PIN");
    } else {
      const storage = FlutterSecureStorage();
      await storage.delete(key: "PIN");
    }
  }

  void createPin(String pin) async {
    if (Platform.isAndroid) {
      const storage = FlutterSecureStorage(
          aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ));
      await storage.write(key: "PIN", value: pin);
    } else {
      const storage = FlutterSecureStorage();
      await storage.write(key: "PIN", value: pin);
    }
  }
}
