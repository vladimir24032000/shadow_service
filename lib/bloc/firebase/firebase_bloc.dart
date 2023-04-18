import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_loadapp_mock/core/firebase/firebase_repo.dart';
import 'package:flutter_loadapp_mock/domain/model/user_permission.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:service_app/bloc/logging_bloc.dart';
import 'package:service_app/core/loggers/logger.dart';
import 'package:service_app/core/model/user.dart';

part 'firebase_bloc.freezed.dart';
part 'firebase_bloc.g.dart';
part 'firebase_event.dart';
part 'firebase_state.dart';

@singleton
class FirebaseBloc extends LoggingBloc<FirebaseEvent, FirebaseState> {
  FirebaseBloc()
      : super(const _LoggedOut(), loggerName: LoggerNames.firebaseBloc) {
    on<FirebaseEvent>(
      (event, emit) => event.map<FutureOr<void>>(
        silentLogin: (event) => _onSilentLogin(event, emit),
        login: (event) => _onLogin(event, emit),
        logout: (event) => _onLogout(event, emit),
        signup: (event) => _onSignup(event, emit),
        resetPassword: (event) => _onForgotPassword(event, emit),
        changePassword: (event) => _onChangePassword(event, emit),
        deleteAccount: (event) => _onDeleteAccount(event, emit),
      ),
    );

    add(const _SilentLogin());
  }

  final _repo = FirebaseRepo();

  Future<void> _onSilentLogin(_SilentLogin _, Emitter emit) {
    return _canLogin(
      () {
        emit(const _LoggingIn());
        return _repo.silentLogin().fold(
              (left) => emit(const _LoggedOut(message: "Silent login failed")),
              (right) => emit(_LoggedIn(user: right)),
            );
      },
    );
  }

  Future<void> _onLogin(_Login event, Emitter emit) => _canLogin(
        () {
          emit(const _LoggingIn());
          return _repo
              .signInWithEmailAndPassword(
                event.email,
                event.password,
              )
              .fold(
                (left) => emit(_LoggedOut(message: left)),
                (user) => emit(_LoggedIn(user: user)),
              );
        },
      );

  Future<void> _onLogout(_Logout _, Emitter emit) async {
    emit(const _LoggingOut());
    await _repo.signOut();
    emit(const _LoggedOut(message: "Logout from user"));
  }

  Future<void> _onSignup(_Signup event, Emitter emit) => _canSignup(() {
        emit(const _SigningUp());
        return _repo
            .createUserWithEmailAndPassword(
              event.email,
              event.password,
            )
            .fold(
              (left) => emit(_LoggedOut(message: left)),
              (user) => emit(_LoggedIn(user: user)),
            );
      });

  Future<void> _onForgotPassword(_ResetPassword event, Emitter emit) =>
      _canSendPasswordReset(
        () async {
          emit(const _SendingPasswordResetEmail());
          await _repo.sendPasswordReset(event.email);
          emit(const _SentPasswordResetEmail());
        },
      );

  Future<void> _onChangePassword(_ChangePassword event, Emitter emit) =>
      _canChangePassword(
        (user) {
          emit(const _ChangingPassword());
          return _repo
              .changePassword(event.oldPassword, event.newPassword, user)
              .fold(
            (left) {
              emit(_ErrorOccured(message: left));
              emit(_LoggedIn(user: user));
            },
            (user) {
              emit(const _PasswordChanged());
              emit(_LoggedIn(user: user));
            },
          );
        },
      );

  Future<void> _onDeleteAccount(_DeleteAccount event, Emitter emit) =>
      _canDeleteAccount(
        (user) {
          emit(const _DeletingAccount());
          return _repo
              .deleteAccount(password: event.password, userUuid: user.uid)
              .fold(
            (left) {
              emit(_ErrorOccured(message: left));
              emit(_LoggedIn(user: user));
            },
            (right) => emit(const _LoggedOut(message: "Account deleted")),
          );
        },
      );

  bool hasRole(UserPermission role) => state.maybeMap(
        loggedIn: (state) => state.user.permissions.contains(role),
        orElse: () => false,
      );

  Future<void> _canLogin(
    Future<void> Function() onSuccess, {
    Future<void> Function()? orElse,
  }) =>
      state.maybeMap(
        loggingIn: (_) async => orElse?.call(),
        loggedIn: (_) async => orElse?.call(),
        orElse: onSuccess,
      );

  Future<void> _canSignup(
    Future<void> Function() onSuccess, {
    Future<void> Function()? orElse,
  }) =>
      state.maybeMap(
        signingUp: (_) async => orElse?.call(),
        loggingIn: (_) async => orElse?.call(),
        loggedIn: (_) async => orElse?.call(),
        changingPassword: (_) async => orElse?.call(),
        passwordChanged: (_) async => orElse?.call(),
        orElse: onSuccess,
      );

  Future<void> _canSendPasswordReset(
    Future<void> Function() onSuccess, {
    Future<void> Function()? orElse,
  }) =>
      state.maybeMap(
        changingPassword: (_) async => orElse?.call(),
        passwordChanged: (_) async => orElse?.call(),
        sentPasswordResetEmail: (_) async => orElse?.call(),
        loggedIn: (_) async => orElse?.call(),
        orElse: () => onSuccess(),
      );

  Future<void> _canChangePassword(
    Future<void> Function(User user) onSuccess, {
    Future<void> Function()? orElse,
  }) =>
      state.maybeWhen(
        loggedIn: (user) => onSuccess(user),
        orElse: () async => orElse?.call(),
      );

  Future<void> _canDeleteAccount(
    Future<void> Function(User user) onSuccess, {
    Future<void> Function()? orElse,
  }) =>
      state.maybeWhen(
        loggedIn: (user) => onSuccess(user),
        orElse: () async => orElse?.call(),
      );
}
