part of 'firebase_email_auth_cubit.dart';

@freezed
class FirebaseEmailAuthState with _$FirebaseEmailAuthState {
  const FirebaseEmailAuthState._();

  const factory FirebaseEmailAuthState.loggedIn() = LoggedIn;

  const factory FirebaseEmailAuthState.loggedOut() = LoggedOut;

  const factory FirebaseEmailAuthState.failure({required String message}) =
      Failure;

  const factory FirebaseEmailAuthState.requestInProgress() = RequestInProgress;
}
