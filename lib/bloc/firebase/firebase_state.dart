part of 'firebase_bloc.dart';

@freezed
class FirebaseState with _$FirebaseState {
  const FirebaseState._();

  const factory FirebaseState.loggingIn() = _LoggingIn;

  const factory FirebaseState.loggedIn({
    required User user,
  }) = _LoggedIn;

  const factory FirebaseState.loggingOut() = _LoggingOut;

  const factory FirebaseState.loggedOut({
    String? message,
  }) = _LoggedOut;

  const factory FirebaseState.signingUp() = _SigningUp;

  const factory FirebaseState.changingPassword() = _ChangingPassword;

  const factory FirebaseState.passwordChanged() = _PasswordChanged;

  const factory FirebaseState.sendingPasswordResetEmail() =
      _SendingPasswordResetEmail;

  const factory FirebaseState.sentPasswordResetEmail() =
      _SentPasswordResetEmail;

  const factory FirebaseState.deletingAccount() = _DeletingAccount;

  const factory FirebaseState.errorOccured({
    String? message,
  }) = _ErrorOccured;

  bool get isLoggedIn => this is _LoggedIn || this is _ChangingPassword;
  bool get isLoggingIn => this is _LoggingIn;
  bool get isChangingPassword => this is _ChangingPassword;

  factory FirebaseState.fromJson(Map<String, dynamic> json) =>
      _$FirebaseStateFromJson(json);
}
