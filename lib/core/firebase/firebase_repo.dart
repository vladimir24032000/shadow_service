import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:service_app/core/unit.dart';

import 'model/user.dart';

class FirebaseRepo {
  final _auth = fb.FirebaseAuth.instance;

  Future<void> signInWithPhone(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (fb.PhoneAuthCredential credential) async {
        final user = await _auth.signInWithCredential(credential);
      },
      verificationFailed: (fb.FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) async {
        // Update the UI - wait for the user to enter the SMS code
        String smsCode = 'xxxx';

        // Create a PhoneAuthCredential with the code
        fb.PhoneAuthCredential credential = fb.PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: smsCode);

        // Sign the user in (or link) with the credential
        await _auth.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<Either<Unit, User>> silentLogin() async {
    final user = _auth.currentUser;
    if (user == null) return const Left(unit);

    return Right(User(email: "", phone: user.phoneNumber!, uid: user.uid));
  }

  Future<void> signOut() => _auth.signOut();

  /// Deletes the user from firebase and firestore
  /// Logs the user out
  /// Returns either a string with the error message or a unit on success.
  Future<Either<String, Unit>> deleteAccount({
    required String password,
    required String userUuid,
  }) async {
    final user = _auth.currentUser;
    if (user == null) return const Left("User is null");

    try {
      await user.delete();
    } on fb.FirebaseAuthException catch (e) {
      if (e.code == "requires-recent-login") {
        final credential = fb.PhoneAuthProvider.credential(
          smsCode: '',
          verificationId: '',
        );

        try {
          await user.reauthenticateWithCredential(credential);
        } on fb.FirebaseAuthException catch (e) {
          return Left(e.message ?? "User deletion failed");
        }
        await user.delete();
      }
    }

    await signOut();
    return const Right(unit);
  }

  Future<Either<String, User>> changePassword(
    String oldPassword,
    String newPassword,
    User user,
  ) async {
    final authUser = _auth.currentUser;
    if (authUser == null) return const Left("User is null");

    try {
      await authUser.updatePassword(newPassword);
      return Right(user);
    } on fb.FirebaseAuthException catch (e) {
      return Left(e.message ?? "Unknown error");
    }
  }
}
