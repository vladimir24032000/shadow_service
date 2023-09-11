// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'firebase_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

// /// @nodoc
// mixin _$FirebaseEvent {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() getUser,
//     required TResult Function(ShadowUser shadowUser) createUser,
//     required TResult Function() deleteUser,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? getUser,
//     TResult? Function(ShadowUser shadowUser)? createUser,
//     TResult? Function()? deleteUser,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? getUser,
//     TResult Function(ShadowUser shadowUser)? createUser,
//     TResult Function()? deleteUser,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetUser value) getUser,
//     required TResult Function(_CreateUser value) createUser,
//     required TResult Function(_DeleteUser value) deleteUser,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetUser value)? getUser,
//     TResult? Function(_CreateUser value)? createUser,
//     TResult? Function(_DeleteUser value)? deleteUser,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetUser value)? getUser,
//     TResult Function(_CreateUser value)? createUser,
//     TResult Function(_DeleteUser value)? deleteUser,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $FirebaseEventCopyWith<$Res> {
//   factory $FirebaseEventCopyWith(
//           FirebaseEvent value, $Res Function(FirebaseEvent) then) =
//       _$FirebaseEventCopyWithImpl<$Res, FirebaseEvent>;
// }

// /// @nodoc
// class _$FirebaseEventCopyWithImpl<$Res, $Val extends FirebaseEvent>
//     implements $FirebaseEventCopyWith<$Res> {
//   _$FirebaseEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;
// }

// /// @nodoc
// abstract class _$$_GetUserCopyWith<$Res> {
//   factory _$$_GetUserCopyWith(
//           _$_GetUser value, $Res Function(_$_GetUser) then) =
//       __$$_GetUserCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_GetUserCopyWithImpl<$Res>
//     extends _$FirebaseEventCopyWithImpl<$Res, _$_GetUser>
//     implements _$$_GetUserCopyWith<$Res> {
//   __$$_GetUserCopyWithImpl(_$_GetUser _value, $Res Function(_$_GetUser) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_GetUser implements _GetUser {
//   const _$_GetUser();

//   @override
//   String toString() {
//     return 'FirebaseEvent.getUser()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_GetUser);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() getUser,
//     required TResult Function(ShadowUser shadowUser) createUser,
//     required TResult Function() deleteUser,
//   }) {
//     return getUser();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? getUser,
//     TResult? Function(ShadowUser shadowUser)? createUser,
//     TResult? Function()? deleteUser,
//   }) {
//     return getUser?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? getUser,
//     TResult Function(ShadowUser shadowUser)? createUser,
//     TResult Function()? deleteUser,
//     required TResult orElse(),
//   }) {
//     if (getUser != null) {
//       return getUser();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetUser value) getUser,
//     required TResult Function(_CreateUser value) createUser,
//     required TResult Function(_DeleteUser value) deleteUser,
//   }) {
//     return getUser(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetUser value)? getUser,
//     TResult? Function(_CreateUser value)? createUser,
//     TResult? Function(_DeleteUser value)? deleteUser,
//   }) {
//     return getUser?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetUser value)? getUser,
//     TResult Function(_CreateUser value)? createUser,
//     TResult Function(_DeleteUser value)? deleteUser,
//     required TResult orElse(),
//   }) {
//     if (getUser != null) {
//       return getUser(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetUser implements FirebaseEvent {
//   const factory _GetUser() = _$_GetUser;
// }

// /// @nodoc
// abstract class _$$_CreateUserCopyWith<$Res> {
//   factory _$$_CreateUserCopyWith(
//           _$_CreateUser value, $Res Function(_$_CreateUser) then) =
//       __$$_CreateUserCopyWithImpl<$Res>;
//   @useResult
//   $Res call({ShadowUser shadowUser});

//   $ShadowUserCopyWith<$Res> get shadowUser;
// }

// /// @nodoc
// class __$$_CreateUserCopyWithImpl<$Res>
//     extends _$FirebaseEventCopyWithImpl<$Res, _$_CreateUser>
//     implements _$$_CreateUserCopyWith<$Res> {
//   __$$_CreateUserCopyWithImpl(
//       _$_CreateUser _value, $Res Function(_$_CreateUser) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? shadowUser = null,
//   }) {
//     return _then(_$_CreateUser(
//       shadowUser: null == shadowUser
//           ? _value.shadowUser
//           : shadowUser // ignore: cast_nullable_to_non_nullable
//               as ShadowUser,
//     ));
//   }

//   @override
//   @pragma('vm:prefer-inline')
//   $ShadowUserCopyWith<$Res> get shadowUser {
//     return $ShadowUserCopyWith<$Res>(_value.shadowUser, (value) {
//       return _then(_value.copyWith(shadowUser: value));
//     });
//   }
// }

// /// @nodoc

// class _$_CreateUser implements _CreateUser {
//   const _$_CreateUser({required this.shadowUser});

//   @override
//   final ShadowUser shadowUser;

//   @override
//   String toString() {
//     return 'FirebaseEvent.createUser(shadowUser: $shadowUser)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_CreateUser &&
//             (identical(other.shadowUser, shadowUser) ||
//                 other.shadowUser == shadowUser));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, shadowUser);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$_CreateUserCopyWith<_$_CreateUser> get copyWith =>
//       __$$_CreateUserCopyWithImpl<_$_CreateUser>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() getUser,
//     required TResult Function(ShadowUser shadowUser) createUser,
//     required TResult Function() deleteUser,
//   }) {
//     return createUser(shadowUser);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? getUser,
//     TResult? Function(ShadowUser shadowUser)? createUser,
//     TResult? Function()? deleteUser,
//   }) {
//     return createUser?.call(shadowUser);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? getUser,
//     TResult Function(ShadowUser shadowUser)? createUser,
//     TResult Function()? deleteUser,
//     required TResult orElse(),
//   }) {
//     if (createUser != null) {
//       return createUser(shadowUser);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetUser value) getUser,
//     required TResult Function(_CreateUser value) createUser,
//     required TResult Function(_DeleteUser value) deleteUser,
//   }) {
//     return createUser(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetUser value)? getUser,
//     TResult? Function(_CreateUser value)? createUser,
//     TResult? Function(_DeleteUser value)? deleteUser,
//   }) {
//     return createUser?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetUser value)? getUser,
//     TResult Function(_CreateUser value)? createUser,
//     TResult Function(_DeleteUser value)? deleteUser,
//     required TResult orElse(),
//   }) {
//     if (createUser != null) {
//       return createUser(this);
//     }
//     return orElse();
//   }
// }

// abstract class _CreateUser implements FirebaseEvent {
//   const factory _CreateUser({required final ShadowUser shadowUser}) =
//       _$_CreateUser;

//   ShadowUser get shadowUser;
//   @JsonKey(ignore: true)
//   _$$_CreateUserCopyWith<_$_CreateUser> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$_DeleteUserCopyWith<$Res> {
//   factory _$$_DeleteUserCopyWith(
//           _$_DeleteUser value, $Res Function(_$_DeleteUser) then) =
//       __$$_DeleteUserCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_DeleteUserCopyWithImpl<$Res>
//     extends _$FirebaseEventCopyWithImpl<$Res, _$_DeleteUser>
//     implements _$$_DeleteUserCopyWith<$Res> {
//   __$$_DeleteUserCopyWithImpl(
//       _$_DeleteUser _value, $Res Function(_$_DeleteUser) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_DeleteUser implements _DeleteUser {
//   const _$_DeleteUser();

//   @override
//   String toString() {
//     return 'FirebaseEvent.deleteUser()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_DeleteUser);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() getUser,
//     required TResult Function(ShadowUser shadowUser) createUser,
//     required TResult Function() deleteUser,
//   }) {
//     return deleteUser();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? getUser,
//     TResult? Function(ShadowUser shadowUser)? createUser,
//     TResult? Function()? deleteUser,
//   }) {
//     return deleteUser?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? getUser,
//     TResult Function(ShadowUser shadowUser)? createUser,
//     TResult Function()? deleteUser,
//     required TResult orElse(),
//   }) {
//     if (deleteUser != null) {
//       return deleteUser();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetUser value) getUser,
//     required TResult Function(_CreateUser value) createUser,
//     required TResult Function(_DeleteUser value) deleteUser,
//   }) {
//     return deleteUser(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetUser value)? getUser,
//     TResult? Function(_CreateUser value)? createUser,
//     TResult? Function(_DeleteUser value)? deleteUser,
//   }) {
//     return deleteUser?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetUser value)? getUser,
//     TResult Function(_CreateUser value)? createUser,
//     TResult Function(_DeleteUser value)? deleteUser,
//     required TResult orElse(),
//   }) {
//     if (deleteUser != null) {
//       return deleteUser(this);
//     }
//     return orElse();
//   }
// }

// abstract class _DeleteUser implements FirebaseEvent {
//   const factory _DeleteUser() = _$_DeleteUser;
// }

// /// @nodoc
// mixin _$FirebaseState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $FirebaseStateCopyWith<$Res> {
//   factory $FirebaseStateCopyWith(
//           FirebaseState value, $Res Function(FirebaseState) then) =
//       _$FirebaseStateCopyWithImpl<$Res, FirebaseState>;
// }

// /// @nodoc
// class _$FirebaseStateCopyWithImpl<$Res, $Val extends FirebaseState>
//     implements $FirebaseStateCopyWith<$Res> {
//   _$FirebaseStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;
// }

// /// @nodoc
// abstract class _$$_LoggingInCopyWith<$Res> {
//   factory _$$_LoggingInCopyWith(
//           _$_LoggingIn value, $Res Function(_$_LoggingIn) then) =
//       __$$_LoggingInCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_LoggingInCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_LoggingIn>
//     implements _$$_LoggingInCopyWith<$Res> {
//   __$$_LoggingInCopyWithImpl(
//       _$_LoggingIn _value, $Res Function(_$_LoggingIn) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_LoggingIn extends _LoggingIn {
//   const _$_LoggingIn() : super._();

//   @override
//   String toString() {
//     return 'FirebaseState.loggingIn()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_LoggingIn);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return loggingIn();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return loggingIn?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (loggingIn != null) {
//       return loggingIn();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return loggingIn(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return loggingIn?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (loggingIn != null) {
//       return loggingIn(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoggingIn extends FirebaseState {
//   const factory _LoggingIn() = _$_LoggingIn;
//   const _LoggingIn._() : super._();
// }

// /// @nodoc
// abstract class _$$_LoggedInCopyWith<$Res> {
//   factory _$$_LoggedInCopyWith(
//           _$_LoggedIn value, $Res Function(_$_LoggedIn) then) =
//       __$$_LoggedInCopyWithImpl<$Res>;
//   @useResult
//   $Res call({ShadowUser shadowUser});

//   $ShadowUserCopyWith<$Res> get shadowUser;
// }

// /// @nodoc
// class __$$_LoggedInCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_LoggedIn>
//     implements _$$_LoggedInCopyWith<$Res> {
//   __$$_LoggedInCopyWithImpl(
//       _$_LoggedIn _value, $Res Function(_$_LoggedIn) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? shadowUser = null,
//   }) {
//     return _then(_$_LoggedIn(
//       shadowUser: null == shadowUser
//           ? _value.shadowUser
//           : shadowUser // ignore: cast_nullable_to_non_nullable
//               as ShadowUser,
//     ));
//   }

//   @override
//   @pragma('vm:prefer-inline')
//   $ShadowUserCopyWith<$Res> get shadowUser {
//     return $ShadowUserCopyWith<$Res>(_value.shadowUser, (value) {
//       return _then(_value.copyWith(shadowUser: value));
//     });
//   }
// }

// /// @nodoc

// class _$_LoggedIn extends _LoggedIn {
//   const _$_LoggedIn({required this.shadowUser}) : super._();

//   @override
//   final ShadowUser shadowUser;

//   @override
//   String toString() {
//     return 'FirebaseState.loggedIn(shadowUser: $shadowUser)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_LoggedIn &&
//             (identical(other.shadowUser, shadowUser) ||
//                 other.shadowUser == shadowUser));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, shadowUser);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
//       __$$_LoggedInCopyWithImpl<_$_LoggedIn>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return loggedIn(shadowUser);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return loggedIn?.call(shadowUser);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (loggedIn != null) {
//       return loggedIn(shadowUser);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return loggedIn(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return loggedIn?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (loggedIn != null) {
//       return loggedIn(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoggedIn extends FirebaseState {
//   const factory _LoggedIn({required final ShadowUser shadowUser}) = _$_LoggedIn;
//   const _LoggedIn._() : super._();

//   ShadowUser get shadowUser;
//   @JsonKey(ignore: true)
//   _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$_LoggingOutCopyWith<$Res> {
//   factory _$$_LoggingOutCopyWith(
//           _$_LoggingOut value, $Res Function(_$_LoggingOut) then) =
//       __$$_LoggingOutCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_LoggingOutCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_LoggingOut>
//     implements _$$_LoggingOutCopyWith<$Res> {
//   __$$_LoggingOutCopyWithImpl(
//       _$_LoggingOut _value, $Res Function(_$_LoggingOut) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_LoggingOut extends _LoggingOut {
//   const _$_LoggingOut() : super._();

//   @override
//   String toString() {
//     return 'FirebaseState.loggingOut()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_LoggingOut);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return loggingOut();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return loggingOut?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (loggingOut != null) {
//       return loggingOut();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return loggingOut(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return loggingOut?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (loggingOut != null) {
//       return loggingOut(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoggingOut extends FirebaseState {
//   const factory _LoggingOut() = _$_LoggingOut;
//   const _LoggingOut._() : super._();
// }

// /// @nodoc
// abstract class _$$_LoggedOutCopyWith<$Res> {
//   factory _$$_LoggedOutCopyWith(
//           _$_LoggedOut value, $Res Function(_$_LoggedOut) then) =
//       __$$_LoggedOutCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String? message});
// }

// /// @nodoc
// class __$$_LoggedOutCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_LoggedOut>
//     implements _$$_LoggedOutCopyWith<$Res> {
//   __$$_LoggedOutCopyWithImpl(
//       _$_LoggedOut _value, $Res Function(_$_LoggedOut) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? message = freezed,
//   }) {
//     return _then(_$_LoggedOut(
//       message: freezed == message
//           ? _value.message
//           : message // ignore: cast_nullable_to_non_nullable
//               as String?,
//     ));
//   }
// }

// /// @nodoc

// class _$_LoggedOut extends _LoggedOut {
//   const _$_LoggedOut({this.message}) : super._();

//   @override
//   final String? message;

//   @override
//   String toString() {
//     return 'FirebaseState.loggedOut(message: $message)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_LoggedOut &&
//             (identical(other.message, message) || other.message == message));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, message);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$_LoggedOutCopyWith<_$_LoggedOut> get copyWith =>
//       __$$_LoggedOutCopyWithImpl<_$_LoggedOut>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return loggedOut(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return loggedOut?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (loggedOut != null) {
//       return loggedOut(message);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return loggedOut(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return loggedOut?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (loggedOut != null) {
//       return loggedOut(this);
//     }
//     return orElse();
//   }
// }

// abstract class _LoggedOut extends FirebaseState {
//   const factory _LoggedOut({final String? message}) = _$_LoggedOut;
//   const _LoggedOut._() : super._();

//   String? get message;
//   @JsonKey(ignore: true)
//   _$$_LoggedOutCopyWith<_$_LoggedOut> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$_SigningUpCopyWith<$Res> {
//   factory _$$_SigningUpCopyWith(
//           _$_SigningUp value, $Res Function(_$_SigningUp) then) =
//       __$$_SigningUpCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_SigningUpCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_SigningUp>
//     implements _$$_SigningUpCopyWith<$Res> {
//   __$$_SigningUpCopyWithImpl(
//       _$_SigningUp _value, $Res Function(_$_SigningUp) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_SigningUp extends _SigningUp {
//   const _$_SigningUp() : super._();

//   @override
//   String toString() {
//     return 'FirebaseState.signingUp()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_SigningUp);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return signingUp();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return signingUp?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (signingUp != null) {
//       return signingUp();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return signingUp(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return signingUp?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (signingUp != null) {
//       return signingUp(this);
//     }
//     return orElse();
//   }
// }

// abstract class _SigningUp extends FirebaseState {
//   const factory _SigningUp() = _$_SigningUp;
//   const _SigningUp._() : super._();
// }

// /// @nodoc
// abstract class _$$_ChangingPasswordCopyWith<$Res> {
//   factory _$$_ChangingPasswordCopyWith(
//           _$_ChangingPassword value, $Res Function(_$_ChangingPassword) then) =
//       __$$_ChangingPasswordCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_ChangingPasswordCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_ChangingPassword>
//     implements _$$_ChangingPasswordCopyWith<$Res> {
//   __$$_ChangingPasswordCopyWithImpl(
//       _$_ChangingPassword _value, $Res Function(_$_ChangingPassword) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_ChangingPassword extends _ChangingPassword {
//   const _$_ChangingPassword() : super._();

//   @override
//   String toString() {
//     return 'FirebaseState.changingPassword()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_ChangingPassword);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return changingPassword();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return changingPassword?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (changingPassword != null) {
//       return changingPassword();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return changingPassword(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return changingPassword?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (changingPassword != null) {
//       return changingPassword(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ChangingPassword extends FirebaseState {
//   const factory _ChangingPassword() = _$_ChangingPassword;
//   const _ChangingPassword._() : super._();
// }

// /// @nodoc
// abstract class _$$_PasswordChangedCopyWith<$Res> {
//   factory _$$_PasswordChangedCopyWith(
//           _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
//       __$$_PasswordChangedCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_PasswordChangedCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_PasswordChanged>
//     implements _$$_PasswordChangedCopyWith<$Res> {
//   __$$_PasswordChangedCopyWithImpl(
//       _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_PasswordChanged extends _PasswordChanged {
//   const _$_PasswordChanged() : super._();

//   @override
//   String toString() {
//     return 'FirebaseState.passwordChanged()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_PasswordChanged);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return passwordChanged();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return passwordChanged?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (passwordChanged != null) {
//       return passwordChanged();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return passwordChanged(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return passwordChanged?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (passwordChanged != null) {
//       return passwordChanged(this);
//     }
//     return orElse();
//   }
// }

// abstract class _PasswordChanged extends FirebaseState {
//   const factory _PasswordChanged() = _$_PasswordChanged;
//   const _PasswordChanged._() : super._();
// }

// /// @nodoc
// abstract class _$$_SendingPasswordResetEmailCopyWith<$Res> {
//   factory _$$_SendingPasswordResetEmailCopyWith(
//           _$_SendingPasswordResetEmail value,
//           $Res Function(_$_SendingPasswordResetEmail) then) =
//       __$$_SendingPasswordResetEmailCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_SendingPasswordResetEmailCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_SendingPasswordResetEmail>
//     implements _$$_SendingPasswordResetEmailCopyWith<$Res> {
//   __$$_SendingPasswordResetEmailCopyWithImpl(
//       _$_SendingPasswordResetEmail _value,
//       $Res Function(_$_SendingPasswordResetEmail) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_SendingPasswordResetEmail extends _SendingPasswordResetEmail {
//   const _$_SendingPasswordResetEmail() : super._();

//   @override
//   String toString() {
//     return 'FirebaseState.sendingPasswordResetEmail()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_SendingPasswordResetEmail);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return sendingPasswordResetEmail();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return sendingPasswordResetEmail?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (sendingPasswordResetEmail != null) {
//       return sendingPasswordResetEmail();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return sendingPasswordResetEmail(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return sendingPasswordResetEmail?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (sendingPasswordResetEmail != null) {
//       return sendingPasswordResetEmail(this);
//     }
//     return orElse();
//   }
// }

// abstract class _SendingPasswordResetEmail extends FirebaseState {
//   const factory _SendingPasswordResetEmail() = _$_SendingPasswordResetEmail;
//   const _SendingPasswordResetEmail._() : super._();
// }

// /// @nodoc
// abstract class _$$_SentPasswordResetEmailCopyWith<$Res> {
//   factory _$$_SentPasswordResetEmailCopyWith(_$_SentPasswordResetEmail value,
//           $Res Function(_$_SentPasswordResetEmail) then) =
//       __$$_SentPasswordResetEmailCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_SentPasswordResetEmailCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_SentPasswordResetEmail>
//     implements _$$_SentPasswordResetEmailCopyWith<$Res> {
//   __$$_SentPasswordResetEmailCopyWithImpl(_$_SentPasswordResetEmail _value,
//       $Res Function(_$_SentPasswordResetEmail) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_SentPasswordResetEmail extends _SentPasswordResetEmail {
//   const _$_SentPasswordResetEmail() : super._();

//   @override
//   String toString() {
//     return 'FirebaseState.sentPasswordResetEmail()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_SentPasswordResetEmail);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return sentPasswordResetEmail();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return sentPasswordResetEmail?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (sentPasswordResetEmail != null) {
//       return sentPasswordResetEmail();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return sentPasswordResetEmail(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return sentPasswordResetEmail?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (sentPasswordResetEmail != null) {
//       return sentPasswordResetEmail(this);
//     }
//     return orElse();
//   }
// }

// abstract class _SentPasswordResetEmail extends FirebaseState {
//   const factory _SentPasswordResetEmail() = _$_SentPasswordResetEmail;
//   const _SentPasswordResetEmail._() : super._();
// }

// /// @nodoc
// abstract class _$$_DeletingAccountCopyWith<$Res> {
//   factory _$$_DeletingAccountCopyWith(
//           _$_DeletingAccount value, $Res Function(_$_DeletingAccount) then) =
//       __$$_DeletingAccountCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_DeletingAccountCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_DeletingAccount>
//     implements _$$_DeletingAccountCopyWith<$Res> {
//   __$$_DeletingAccountCopyWithImpl(
//       _$_DeletingAccount _value, $Res Function(_$_DeletingAccount) _then)
//       : super(_value, _then);
// }

// /// @nodoc

// class _$_DeletingAccount extends _DeletingAccount {
//   const _$_DeletingAccount() : super._();

//   @override
//   String toString() {
//     return 'FirebaseState.deletingAccount()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_DeletingAccount);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return deletingAccount();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return deletingAccount?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (deletingAccount != null) {
//       return deletingAccount();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return deletingAccount(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return deletingAccount?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (deletingAccount != null) {
//       return deletingAccount(this);
//     }
//     return orElse();
//   }
// }

// abstract class _DeletingAccount extends FirebaseState {
//   const factory _DeletingAccount() = _$_DeletingAccount;
//   const _DeletingAccount._() : super._();
// }

// /// @nodoc
// abstract class _$$_ErrorOccuredCopyWith<$Res> {
//   factory _$$_ErrorOccuredCopyWith(
//           _$_ErrorOccured value, $Res Function(_$_ErrorOccured) then) =
//       __$$_ErrorOccuredCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String? message});
// }

// /// @nodoc
// class __$$_ErrorOccuredCopyWithImpl<$Res>
//     extends _$FirebaseStateCopyWithImpl<$Res, _$_ErrorOccured>
//     implements _$$_ErrorOccuredCopyWith<$Res> {
//   __$$_ErrorOccuredCopyWithImpl(
//       _$_ErrorOccured _value, $Res Function(_$_ErrorOccured) _then)
//       : super(_value, _then);

//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? message = freezed,
//   }) {
//     return _then(_$_ErrorOccured(
//       message: freezed == message
//           ? _value.message
//           : message // ignore: cast_nullable_to_non_nullable
//               as String?,
//     ));
//   }
// }

// /// @nodoc

// class _$_ErrorOccured extends _ErrorOccured {
//   const _$_ErrorOccured({this.message}) : super._();

//   @override
//   final String? message;

//   @override
//   String toString() {
//     return 'FirebaseState.errorOccured(message: $message)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_ErrorOccured &&
//             (identical(other.message, message) || other.message == message));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, message);

//   @JsonKey(ignore: true)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$_ErrorOccuredCopyWith<_$_ErrorOccured> get copyWith =>
//       __$$_ErrorOccuredCopyWithImpl<_$_ErrorOccured>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() loggingIn,
//     required TResult Function(ShadowUser shadowUser) loggedIn,
//     required TResult Function() loggingOut,
//     required TResult Function(String? message) loggedOut,
//     required TResult Function() signingUp,
//     required TResult Function() changingPassword,
//     required TResult Function() passwordChanged,
//     required TResult Function() sendingPasswordResetEmail,
//     required TResult Function() sentPasswordResetEmail,
//     required TResult Function() deletingAccount,
//     required TResult Function(String? message) errorOccured,
//   }) {
//     return errorOccured(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? loggingIn,
//     TResult? Function(ShadowUser shadowUser)? loggedIn,
//     TResult? Function()? loggingOut,
//     TResult? Function(String? message)? loggedOut,
//     TResult? Function()? signingUp,
//     TResult? Function()? changingPassword,
//     TResult? Function()? passwordChanged,
//     TResult? Function()? sendingPasswordResetEmail,
//     TResult? Function()? sentPasswordResetEmail,
//     TResult? Function()? deletingAccount,
//     TResult? Function(String? message)? errorOccured,
//   }) {
//     return errorOccured?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? loggingIn,
//     TResult Function(ShadowUser shadowUser)? loggedIn,
//     TResult Function()? loggingOut,
//     TResult Function(String? message)? loggedOut,
//     TResult Function()? signingUp,
//     TResult Function()? changingPassword,
//     TResult Function()? passwordChanged,
//     TResult Function()? sendingPasswordResetEmail,
//     TResult Function()? sentPasswordResetEmail,
//     TResult Function()? deletingAccount,
//     TResult Function(String? message)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (errorOccured != null) {
//       return errorOccured(message);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_LoggingIn value) loggingIn,
//     required TResult Function(_LoggedIn value) loggedIn,
//     required TResult Function(_LoggingOut value) loggingOut,
//     required TResult Function(_LoggedOut value) loggedOut,
//     required TResult Function(_SigningUp value) signingUp,
//     required TResult Function(_ChangingPassword value) changingPassword,
//     required TResult Function(_PasswordChanged value) passwordChanged,
//     required TResult Function(_SendingPasswordResetEmail value)
//         sendingPasswordResetEmail,
//     required TResult Function(_SentPasswordResetEmail value)
//         sentPasswordResetEmail,
//     required TResult Function(_DeletingAccount value) deletingAccount,
//     required TResult Function(_ErrorOccured value) errorOccured,
//   }) {
//     return errorOccured(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_LoggingIn value)? loggingIn,
//     TResult? Function(_LoggedIn value)? loggedIn,
//     TResult? Function(_LoggingOut value)? loggingOut,
//     TResult? Function(_LoggedOut value)? loggedOut,
//     TResult? Function(_SigningUp value)? signingUp,
//     TResult? Function(_ChangingPassword value)? changingPassword,
//     TResult? Function(_PasswordChanged value)? passwordChanged,
//     TResult? Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult? Function(_DeletingAccount value)? deletingAccount,
//     TResult? Function(_ErrorOccured value)? errorOccured,
//   }) {
//     return errorOccured?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_LoggingIn value)? loggingIn,
//     TResult Function(_LoggedIn value)? loggedIn,
//     TResult Function(_LoggingOut value)? loggingOut,
//     TResult Function(_LoggedOut value)? loggedOut,
//     TResult Function(_SigningUp value)? signingUp,
//     TResult Function(_ChangingPassword value)? changingPassword,
//     TResult Function(_PasswordChanged value)? passwordChanged,
//     TResult Function(_SendingPasswordResetEmail value)?
//         sendingPasswordResetEmail,
//     TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
//     TResult Function(_DeletingAccount value)? deletingAccount,
//     TResult Function(_ErrorOccured value)? errorOccured,
//     required TResult orElse(),
//   }) {
//     if (errorOccured != null) {
//       return errorOccured(this);
//     }
//     return orElse();
//   }
// }

// abstract class _ErrorOccured extends FirebaseState {
//   const factory _ErrorOccured({final String? message}) = _$_ErrorOccured;
//   const _ErrorOccured._() : super._();

//   String? get message;
//   @JsonKey(ignore: true)
//   _$$_ErrorOccuredCopyWith<_$_ErrorOccured> get copyWith =>
//       throw _privateConstructorUsedError;
// }
