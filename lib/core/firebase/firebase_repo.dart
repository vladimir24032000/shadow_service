import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:flutter/foundation.dart';
import 'package:flutter_loadapp_mock/core/unit.dart';
import 'package:flutter_loadapp_mock/domain/model/user_permission.dart';

import '../../domain/model/user.dart';
import '../../repository/permissions/failures.dart';
import '../../repository/permissions/permissions_repository.dart';

class FirebaseRepo {
  final _auth = fb.FirebaseAuth.instance;
  final _firestore = Firebase.instance;
  final _permissionsRepository = const PermissionsRepository();

  Future<Either<String, User>> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    fb.User? dataUser;
    try {
      final result = await _auth.verifyPhoneNumber(
        email: email,
        password: password,
      );
      dataUser = result.user;
    } on fb.FirebaseAuthException catch (e) {
      return Left(e.message ?? "Unknown Error");
    }

    final user = dataUser;
    if (user == null) return const Left("Success but user is null");

    final id = user.uid;
    //create user in Firestore db
    try {
      final user = <String, String>{"email": email, "uid": id};
      await _firestore.collection("/Users").doc(id).set(user);
    } on fb.FirebaseAuthException catch (_) {
      return const Left("User creation failed");
    }
    // add needed permissions to created user
    final necessaryPermissions = {
      UserPermission.videoMode,
      UserPermission.exportASCII,
    };
    try {
      for (final permission in necessaryPermissions) {
        final roleDoc =
            _firestore.collection("/Functions").doc(permission.firebaseValue);
        await roleDoc.update({
          "functionUsersList": FieldValue.arrayUnion([id])
        });
      }
    } on FirebaseException catch (e) {
      debugPrint(e.message);
    }

    return _loadPermissions(user: user, onLeft: (left) => left.toString());
  }

  Future<Either<String, User>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    fb.User? dataUser;
    try {
      final loginResult = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      dataUser = loginResult.user;
    } on fb.FirebaseAuthException {
      return const Left("Wrong email or password");
    }

    final user = dataUser;
    if (user == null) return const Left("Success but user is null");

    return _loadPermissions(user: user, onLeft: (left) => left.toString());
  }

  Future<Either<Unit, User>> silentLogin() async {
    final user = _auth.currentUser;
    if (user == null) return const Left(unit);

    return _loadPermissions(user: user, onLeft: (left) => unit);
  }

  Future<void> signOut() => _auth.signOut();

  Future<void> sendPasswordReset(String email) =>
      _auth.sendPasswordResetEmail(email: email);

  /// Deletes the user from firebase and firestore
  /// Logs the user out
  /// Returns either a string with the error message or a unit on success.
  Future<Either<String, Unit>> deleteAccount({
    required String password,
    required String userUuid,
  }) async {
    final user = _auth.currentUser;
    if (user == null) return const Left("User is null");

    final deletePermissionsOption =
        await _permissionsRepository.deleteAllUserPermissions(
      userId: user.uid,
      onFailure: (e) => Left<String, Unit>(e.toString()),
    );
    if (deletePermissionsOption.isLeft) return deletePermissionsOption.left;

    try {
      await _firestore.collection("/Users").doc(userUuid).delete();
    } on fb.FirebaseAuthException catch (e) {
      return Left(e.toString());
    }

    try {
      await user.delete();
    } on fb.FirebaseAuthException catch (e) {
      if (e.code == "requires-recent-login") {
        final credential = fb.EmailAuthProvider.credential(
          email: user.email!,
          password: password,
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

  Future<Either<L, User>> _loadPermissions<L>({
    required fb.User user,
    required L Function(PermissionsFailure) onLeft,
  }) =>
      _permissionsRepository.getPermissions(userId: user.uid).fold(
            (left) => Left(onLeft(left)),
            (right) => Right(
              User(
                uid: user.uid,
                email: user.email ?? "",
                permissions: right,
              ),
            ),
          );
}
