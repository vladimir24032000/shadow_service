// import 'dart:async';

// import 'package:either_dart/either.dart';
// import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:service_app/bloc/logging_bloc.dart';
// import 'package:service_app/core/firebase/firebase_repo.dart';
// import 'package:service_app/core/firebase/model/user.dart';
// import 'package:service_app/core/loggers/logger.dart';

// part 'firebase_bloc.freezed.dart';
// part 'firebase_event.dart';
// part 'firebase_state.dart';

// class FirebaseBloc extends LoggingBloc<FirebaseEvent, FirebaseState> {
//   FirebaseBloc()
//       : super(const _LoggedOut(), loggerName: LoggerNames.firebaseBloc) {
//     on<FirebaseEvent>(
//       (event, emit) => event.map<FutureOr<void>>(
//         getUser: (event) => _onGetUser(event, emit),
//         createUser: (event) => _onCreateUser(event, emit),
//         deleteUser: (event) => _onDeleteUser(event, emit),
//       ),
//     );
//   }

//   Future<void> _onGetUser(_GetUser event, Emitter emit) async {}
//   Future<void> _onCreateUser(_CreateUser event, Emitter emit) async {}
//   Future<void> _onDeleteUser(_DeleteUser event, Emitter emit) async {}
// }
