part of 'firebase_bloc.dart';

@freezed
class FirebaseEvent with _$FirebaseEvent {
  const factory FirebaseEvent.silentLogin() = _SilentLogin;

  const factory FirebaseEvent.login({
    required String email,
    required String password,
  }) = _Login;

  const factory FirebaseEvent.logout() = _Logout;

  const factory FirebaseEvent.signup({
    required String email,
    required String password,
  }) = _Signup;

  const factory FirebaseEvent.resetPassword({
    required String email,
  }) = _ResetPassword;

  const factory FirebaseEvent.changePassword({
    required String oldPassword,
    required String newPassword,
  }) = _ChangePassword;

  const factory FirebaseEvent.deleteAccount({
    required String password,
  }) = _DeleteAccount;
}
