import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/bloc/api/api_state.dart';
import 'package:service_app/core/api/api_repo.dart';
import 'package:service_app/core/api/model/user.dart';

class ApiCubit extends Cubit<ApiState> {
  late final ApiRepo _apiRepo;

  User? user;

  ApiCubit() : super(InProgressApiState()) {
    _apiRepo = ApiRepo();
  }
  Future<void> createUser(User user) async {
    emit(InProgressApiState());
    await _apiRepo.postUser(user).fold((left) => emit(LoggedInApiState()),
        (right) async {
      this.user = right;
      emit(LoggedInApiState());
    });
  }

  Future<void> updateUser(User user) async {
    emit(InProgressApiState());
    await _apiRepo.patchUser(user).fold((left) => emit(LoggedInApiState()),
        (right) async {
      this.user = right;
      emit(LoggedInApiState());
    });
  }

  Future<void> slientLogin() async {
    emit(InProgressApiState());
    await _apiRepo.silentAuth().fold((left) => emit(LoggedOutApiState()),
        (right) async {
      await _apiRepo.getUser().fold((left) => emit(LoggedOutApiState()),
          (right) {
        user = right;
        emit(LoggedInApiState());
      });
    });
  }

  Future<void> logOut() async {
    emit(InProgressApiState());
    await _apiRepo.logOut();
    emit(LoggedOutApiState());
  }

  Future<void> authWithEmailAndPass(String email, String pass) async {
    emit(InProgressApiState());
    await _apiRepo
        .authWithEmailAndPass(email, pass)
        .fold((left) => emit(LoggedOutApiState()), (right) async {
      await _apiRepo.getUser().fold((left) => emit(LoggedOutApiState()),
          (right) {
        user = user;
        emit(LoggedInApiState());
      });
    });
  }
}
