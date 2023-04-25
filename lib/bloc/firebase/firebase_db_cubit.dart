import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:service_app/core/firebase/firebase_repo.dart';
import 'package:service_app/core/firebase/model/user.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_db_state.dart';
part 'firebase_db_cubit.freezed.dart';

class FirebaseDbCubit extends Cubit<FirebaseDBState> {
  FirebaseDbCubit() : super(const UserNotExists());

  ShadowUser? user;

  final FirebaseRepo _firebaseRepo = FirebaseRepo();

  Future<ShadowUser?> getUserIfExists() async {
    emit(const FirebaseDBState.requestInProgress());
    try {
      user = await _firebaseRepo.getUser();
      if (user != null) {
        emit(FirebaseDBState.userExists(shadowUser: user!));
      } else {
        emit(const FirebaseDBState.userNotExists());
      }
    } catch (_) {}
    return user;
  }

  void logOut() {
    user = null;
  }

  Future<void> createUser(ShadowUser shadowUser) async {
    emit(const FirebaseDBState.requestInProgress());
    final checkUser = await _firebaseRepo.getUser();
    if (checkUser != null) {
      emit(FirebaseDBState.userExists(shadowUser: checkUser));
    } else {
      await _firebaseRepo.createUser(shadowUser);
      user = await _firebaseRepo.getUser();
      if (user != null) {
        emit(FirebaseDBState.userExists(shadowUser: user!));
      } else {
        emit(const FirebaseDBState.userNotExists());
      }
    }
  }

  Future<void> deleteUser() async {
    emit(const FirebaseDBState.requestInProgress());
    _firebaseRepo.deleteUser();
    user = null;
    emit(const FirebaseDBState.userNotExists());
  }
}
