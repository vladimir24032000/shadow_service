import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/services.dart';
import 'package:service_app/core/firebase/firebase_repo.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_email_auth_state.dart';
part 'firebase_email_auth_cubit.freezed.dart';

class FirebaseEmailAuthCubit extends Cubit<FirebaseEmailAuthState> {
  FirebaseEmailAuthCubit() : super(const LoggedOut());

  Future<void> signUp(String email, String pass) async {
    emit(const RequestInProgress());
    try {
      final credential = await FirebaseRepo.auth
          .createUserWithEmailAndPassword(email: email, password: pass);
      await credential.user?.sendEmailVerification();
    } catch (signUpError) {
      if (signUpError is FirebaseAuthException) {
        if (signUpError.code == 'email-already-in-use') {
          emit(const Failure(message: "Email is already in use"));
          await Future.delayed(const Duration(milliseconds: 300));
          emit(const LoggedOut());
          return;
        } else {
          emit(Failure(message: signUpError.code));
          await Future.delayed(const Duration(milliseconds: 300));
          emit(const LoggedOut());
          return;
        }
      } else {
        emit(Failure(message: signUpError.toString()));
        await Future.delayed(const Duration(milliseconds: 300));
        emit(const LoggedOut());
        return;
      }
    }

    if (FirebaseRepo.firebaseUser != null) {
      emit(const LoggedIn());
    } else {
      emit(const LoggedOut());
    }
  }

  Future<void> changePassword(
    String oldPassword,
    String newPassword,
  ) async {
    emit(const RequestInProgress());
    try {
      await FirebaseRepo.firebaseUser?.updatePassword(newPassword);
    } catch (e) {
      emit(Failure(message: e.toString()));
    } finally {
      emit(const LoggedIn());
    }
  }

  Future<void> login(String email, String pass) async {
    emit(const RequestInProgress());
    try {
      await FirebaseRepo.auth
          .signInWithEmailAndPassword(email: email, password: pass);
    } catch (e) {
      emit(Failure(message: e.toString()));
      await Future.delayed(const Duration(milliseconds: 300));
      emit(const LoggedOut());
      return;
    }
    if (FirebaseRepo.firebaseUser != null) {
      emit(const LoggedIn());
    } else {
      emit(const LoggedOut());
    }
  }
}
