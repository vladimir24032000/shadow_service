// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() silentLogin,
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
    required TResult Function(String email, String password) signup,
    required TResult Function(String email) resetPassword,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(String password) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? silentLogin,
    TResult? Function(String email, String password)? login,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(String password)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? silentLogin,
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    TResult Function(String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SilentLogin value) silentLogin,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SilentLogin value)? silentLogin,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SilentLogin value)? silentLogin,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Signup value)? signup,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseEventCopyWith<$Res> {
  factory $FirebaseEventCopyWith(
          FirebaseEvent value, $Res Function(FirebaseEvent) then) =
      _$FirebaseEventCopyWithImpl<$Res, FirebaseEvent>;
}

/// @nodoc
class _$FirebaseEventCopyWithImpl<$Res, $Val extends FirebaseEvent>
    implements $FirebaseEventCopyWith<$Res> {
  _$FirebaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SilentLoginCopyWith<$Res> {
  factory _$$_SilentLoginCopyWith(
          _$_SilentLogin value, $Res Function(_$_SilentLogin) then) =
      __$$_SilentLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SilentLoginCopyWithImpl<$Res>
    extends _$FirebaseEventCopyWithImpl<$Res, _$_SilentLogin>
    implements _$$_SilentLoginCopyWith<$Res> {
  __$$_SilentLoginCopyWithImpl(
      _$_SilentLogin _value, $Res Function(_$_SilentLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SilentLogin implements _SilentLogin {
  const _$_SilentLogin();

  @override
  String toString() {
    return 'FirebaseEvent.silentLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SilentLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() silentLogin,
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
    required TResult Function(String email, String password) signup,
    required TResult Function(String email) resetPassword,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(String password) deleteAccount,
  }) {
    return silentLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? silentLogin,
    TResult? Function(String email, String password)? login,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(String password)? deleteAccount,
  }) {
    return silentLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? silentLogin,
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    TResult Function(String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (silentLogin != null) {
      return silentLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SilentLogin value) silentLogin,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return silentLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SilentLogin value)? silentLogin,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return silentLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SilentLogin value)? silentLogin,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Signup value)? signup,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (silentLogin != null) {
      return silentLogin(this);
    }
    return orElse();
  }
}

abstract class _SilentLogin implements FirebaseEvent {
  const factory _SilentLogin() = _$_SilentLogin;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$FirebaseEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_Login(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'FirebaseEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() silentLogin,
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
    required TResult Function(String email, String password) signup,
    required TResult Function(String email) resetPassword,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(String password) deleteAccount,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? silentLogin,
    TResult? Function(String email, String password)? login,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(String password)? deleteAccount,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? silentLogin,
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    TResult Function(String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SilentLogin value) silentLogin,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SilentLogin value)? silentLogin,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SilentLogin value)? silentLogin,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Signup value)? signup,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements FirebaseEvent {
  const factory _Login(
      {required final String email, required final String password}) = _$_Login;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$FirebaseEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'FirebaseEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() silentLogin,
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
    required TResult Function(String email, String password) signup,
    required TResult Function(String email) resetPassword,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(String password) deleteAccount,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? silentLogin,
    TResult? Function(String email, String password)? login,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(String password)? deleteAccount,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? silentLogin,
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    TResult Function(String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SilentLogin value) silentLogin,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SilentLogin value)? silentLogin,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SilentLogin value)? silentLogin,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Signup value)? signup,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements FirebaseEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_SignupCopyWith<$Res> {
  factory _$$_SignupCopyWith(_$_Signup value, $Res Function(_$_Signup) then) =
      __$$_SignupCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignupCopyWithImpl<$Res>
    extends _$FirebaseEventCopyWithImpl<$Res, _$_Signup>
    implements _$$_SignupCopyWith<$Res> {
  __$$_SignupCopyWithImpl(_$_Signup _value, $Res Function(_$_Signup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_Signup(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Signup implements _Signup {
  const _$_Signup({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'FirebaseEvent.signup(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Signup &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupCopyWith<_$_Signup> get copyWith =>
      __$$_SignupCopyWithImpl<_$_Signup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() silentLogin,
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
    required TResult Function(String email, String password) signup,
    required TResult Function(String email) resetPassword,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(String password) deleteAccount,
  }) {
    return signup(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? silentLogin,
    TResult? Function(String email, String password)? login,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(String password)? deleteAccount,
  }) {
    return signup?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? silentLogin,
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    TResult Function(String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SilentLogin value) silentLogin,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SilentLogin value)? silentLogin,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SilentLogin value)? silentLogin,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Signup value)? signup,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class _Signup implements FirebaseEvent {
  const factory _Signup(
      {required final String email,
      required final String password}) = _$_Signup;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignupCopyWith<_$_Signup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordCopyWith<$Res> {
  factory _$$_ResetPasswordCopyWith(
          _$_ResetPassword value, $Res Function(_$_ResetPassword) then) =
      __$$_ResetPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ResetPasswordCopyWithImpl<$Res>
    extends _$FirebaseEventCopyWithImpl<$Res, _$_ResetPassword>
    implements _$$_ResetPasswordCopyWith<$Res> {
  __$$_ResetPasswordCopyWithImpl(
      _$_ResetPassword _value, $Res Function(_$_ResetPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ResetPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPassword implements _ResetPassword {
  const _$_ResetPassword({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'FirebaseEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPassword &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      __$$_ResetPasswordCopyWithImpl<_$_ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() silentLogin,
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
    required TResult Function(String email, String password) signup,
    required TResult Function(String email) resetPassword,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(String password) deleteAccount,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? silentLogin,
    TResult? Function(String email, String password)? login,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(String password)? deleteAccount,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? silentLogin,
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    TResult Function(String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SilentLogin value) silentLogin,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SilentLogin value)? silentLogin,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SilentLogin value)? silentLogin,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Signup value)? signup,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements FirebaseEvent {
  const factory _ResetPassword({required final String email}) =
      _$_ResetPassword;

  String get email;
  @JsonKey(ignore: true)
  _$$_ResetPasswordCopyWith<_$_ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordCopyWith<$Res> {
  factory _$$_ChangePasswordCopyWith(
          _$_ChangePassword value, $Res Function(_$_ChangePassword) then) =
      __$$_ChangePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$_ChangePasswordCopyWithImpl<$Res>
    extends _$FirebaseEventCopyWithImpl<$Res, _$_ChangePassword>
    implements _$$_ChangePasswordCopyWith<$Res> {
  __$$_ChangePasswordCopyWithImpl(
      _$_ChangePassword _value, $Res Function(_$_ChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$_ChangePassword(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(
      {required this.oldPassword, required this.newPassword});

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'FirebaseEvent.changePassword(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePassword &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      __$$_ChangePasswordCopyWithImpl<_$_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() silentLogin,
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
    required TResult Function(String email, String password) signup,
    required TResult Function(String email) resetPassword,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(String password) deleteAccount,
  }) {
    return changePassword(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? silentLogin,
    TResult? Function(String email, String password)? login,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(String password)? deleteAccount,
  }) {
    return changePassword?.call(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? silentLogin,
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    TResult Function(String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(oldPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SilentLogin value) silentLogin,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SilentLogin value)? silentLogin,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SilentLogin value)? silentLogin,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Signup value)? signup,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements FirebaseEvent {
  const factory _ChangePassword(
      {required final String oldPassword,
      required final String newPassword}) = _$_ChangePassword;

  String get oldPassword;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteAccountCopyWith<$Res> {
  factory _$$_DeleteAccountCopyWith(
          _$_DeleteAccount value, $Res Function(_$_DeleteAccount) then) =
      __$$_DeleteAccountCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_DeleteAccountCopyWithImpl<$Res>
    extends _$FirebaseEventCopyWithImpl<$Res, _$_DeleteAccount>
    implements _$$_DeleteAccountCopyWith<$Res> {
  __$$_DeleteAccountCopyWithImpl(
      _$_DeleteAccount _value, $Res Function(_$_DeleteAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_DeleteAccount(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteAccount implements _DeleteAccount {
  const _$_DeleteAccount({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'FirebaseEvent.deleteAccount(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAccount &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAccountCopyWith<_$_DeleteAccount> get copyWith =>
      __$$_DeleteAccountCopyWithImpl<_$_DeleteAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() silentLogin,
    required TResult Function(String email, String password) login,
    required TResult Function() logout,
    required TResult Function(String email, String password) signup,
    required TResult Function(String email) resetPassword,
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(String password) deleteAccount,
  }) {
    return deleteAccount(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? silentLogin,
    TResult? Function(String email, String password)? login,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function(String oldPassword, String newPassword)? changePassword,
    TResult? Function(String password)? deleteAccount,
  }) {
    return deleteAccount?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? silentLogin,
    TResult Function(String email, String password)? login,
    TResult Function()? logout,
    TResult Function(String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(String password)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SilentLogin value) silentLogin,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SilentLogin value)? silentLogin,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SilentLogin value)? silentLogin,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    TResult Function(_Signup value)? signup,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccount implements FirebaseEvent {
  const factory _DeleteAccount({required final String password}) =
      _$_DeleteAccount;

  String get password;
  @JsonKey(ignore: true)
  _$$_DeleteAccountCopyWith<_$_DeleteAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

FirebaseState _$FirebaseStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loggingIn':
      return _LoggingIn.fromJson(json);
    case 'loggedIn':
      return _LoggedIn.fromJson(json);
    case 'loggingOut':
      return _LoggingOut.fromJson(json);
    case 'loggedOut':
      return _LoggedOut.fromJson(json);
    case 'signingUp':
      return _SigningUp.fromJson(json);
    case 'changingPassword':
      return _ChangingPassword.fromJson(json);
    case 'passwordChanged':
      return _PasswordChanged.fromJson(json);
    case 'sendingPasswordResetEmail':
      return _SendingPasswordResetEmail.fromJson(json);
    case 'sentPasswordResetEmail':
      return _SentPasswordResetEmail.fromJson(json);
    case 'deletingAccount':
      return _DeletingAccount.fromJson(json);
    case 'errorOccured':
      return _ErrorOccured.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FirebaseState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FirebaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseStateCopyWith<$Res> {
  factory $FirebaseStateCopyWith(
          FirebaseState value, $Res Function(FirebaseState) then) =
      _$FirebaseStateCopyWithImpl<$Res, FirebaseState>;
}

/// @nodoc
class _$FirebaseStateCopyWithImpl<$Res, $Val extends FirebaseState>
    implements $FirebaseStateCopyWith<$Res> {
  _$FirebaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoggingInCopyWith<$Res> {
  factory _$$_LoggingInCopyWith(
          _$_LoggingIn value, $Res Function(_$_LoggingIn) then) =
      __$$_LoggingInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoggingInCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_LoggingIn>
    implements _$$_LoggingInCopyWith<$Res> {
  __$$_LoggingInCopyWithImpl(
      _$_LoggingIn _value, $Res Function(_$_LoggingIn) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_LoggingIn extends _LoggingIn {
  const _$_LoggingIn({final String? $type})
      : $type = $type ?? 'loggingIn',
        super._();

  factory _$_LoggingIn.fromJson(Map<String, dynamic> json) =>
      _$$_LoggingInFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoggingIn);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggingInToJson(
      this,
    );
  }
}

abstract class _LoggingIn extends FirebaseState {
  const factory _LoggingIn() = _$_LoggingIn;
  const _LoggingIn._() : super._();

  factory _LoggingIn.fromJson(Map<String, dynamic> json) =
      _$_LoggingIn.fromJson;
}

/// @nodoc
abstract class _$$_LoggedInCopyWith<$Res> {
  factory _$$_LoggedInCopyWith(
          _$_LoggedIn value, $Res Function(_$_LoggedIn) then) =
      __$$_LoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoggedInCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_LoggedIn>
    implements _$$_LoggedInCopyWith<$Res> {
  __$$_LoggedInCopyWithImpl(
      _$_LoggedIn _value, $Res Function(_$_LoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_LoggedIn(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoggedIn extends _LoggedIn {
  const _$_LoggedIn({required this.user, final String? $type})
      : $type = $type ?? 'loggedIn',
        super._();

  factory _$_LoggedIn.fromJson(Map<String, dynamic> json) =>
      _$$_LoggedInFromJson(json);

  @override
  final User user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
      __$$_LoggedInCopyWithImpl<_$_LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggedInToJson(
      this,
    );
  }
}

abstract class _LoggedIn extends FirebaseState {
  const factory _LoggedIn({required final User user}) = _$_LoggedIn;
  const _LoggedIn._() : super._();

  factory _LoggedIn.fromJson(Map<String, dynamic> json) = _$_LoggedIn.fromJson;

  User get user;
  @JsonKey(ignore: true)
  _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoggingOutCopyWith<$Res> {
  factory _$$_LoggingOutCopyWith(
          _$_LoggingOut value, $Res Function(_$_LoggingOut) then) =
      __$$_LoggingOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoggingOutCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_LoggingOut>
    implements _$$_LoggingOutCopyWith<$Res> {
  __$$_LoggingOutCopyWithImpl(
      _$_LoggingOut _value, $Res Function(_$_LoggingOut) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_LoggingOut extends _LoggingOut {
  const _$_LoggingOut({final String? $type})
      : $type = $type ?? 'loggingOut',
        super._();

  factory _$_LoggingOut.fromJson(Map<String, dynamic> json) =>
      _$$_LoggingOutFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.loggingOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoggingOut);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return loggingOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return loggingOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return loggingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return loggingOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggingOutToJson(
      this,
    );
  }
}

abstract class _LoggingOut extends FirebaseState {
  const factory _LoggingOut() = _$_LoggingOut;
  const _LoggingOut._() : super._();

  factory _LoggingOut.fromJson(Map<String, dynamic> json) =
      _$_LoggingOut.fromJson;
}

/// @nodoc
abstract class _$$_LoggedOutCopyWith<$Res> {
  factory _$$_LoggedOutCopyWith(
          _$_LoggedOut value, $Res Function(_$_LoggedOut) then) =
      __$$_LoggedOutCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_LoggedOutCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_LoggedOut>
    implements _$$_LoggedOutCopyWith<$Res> {
  __$$_LoggedOutCopyWithImpl(
      _$_LoggedOut _value, $Res Function(_$_LoggedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_LoggedOut(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoggedOut extends _LoggedOut {
  const _$_LoggedOut({this.message, final String? $type})
      : $type = $type ?? 'loggedOut',
        super._();

  factory _$_LoggedOut.fromJson(Map<String, dynamic> json) =>
      _$$_LoggedOutFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.loggedOut(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggedOut &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggedOutCopyWith<_$_LoggedOut> get copyWith =>
      __$$_LoggedOutCopyWithImpl<_$_LoggedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return loggedOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return loggedOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggedOutToJson(
      this,
    );
  }
}

abstract class _LoggedOut extends FirebaseState {
  const factory _LoggedOut({final String? message}) = _$_LoggedOut;
  const _LoggedOut._() : super._();

  factory _LoggedOut.fromJson(Map<String, dynamic> json) =
      _$_LoggedOut.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$_LoggedOutCopyWith<_$_LoggedOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SigningUpCopyWith<$Res> {
  factory _$$_SigningUpCopyWith(
          _$_SigningUp value, $Res Function(_$_SigningUp) then) =
      __$$_SigningUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SigningUpCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_SigningUp>
    implements _$$_SigningUpCopyWith<$Res> {
  __$$_SigningUpCopyWithImpl(
      _$_SigningUp _value, $Res Function(_$_SigningUp) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_SigningUp extends _SigningUp {
  const _$_SigningUp({final String? $type})
      : $type = $type ?? 'signingUp',
        super._();

  factory _$_SigningUp.fromJson(Map<String, dynamic> json) =>
      _$$_SigningUpFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.signingUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SigningUp);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return signingUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return signingUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (signingUp != null) {
      return signingUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return signingUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return signingUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (signingUp != null) {
      return signingUp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SigningUpToJson(
      this,
    );
  }
}

abstract class _SigningUp extends FirebaseState {
  const factory _SigningUp() = _$_SigningUp;
  const _SigningUp._() : super._();

  factory _SigningUp.fromJson(Map<String, dynamic> json) =
      _$_SigningUp.fromJson;
}

/// @nodoc
abstract class _$$_ChangingPasswordCopyWith<$Res> {
  factory _$$_ChangingPasswordCopyWith(
          _$_ChangingPassword value, $Res Function(_$_ChangingPassword) then) =
      __$$_ChangingPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangingPasswordCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_ChangingPassword>
    implements _$$_ChangingPasswordCopyWith<$Res> {
  __$$_ChangingPasswordCopyWithImpl(
      _$_ChangingPassword _value, $Res Function(_$_ChangingPassword) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ChangingPassword extends _ChangingPassword {
  const _$_ChangingPassword({final String? $type})
      : $type = $type ?? 'changingPassword',
        super._();

  factory _$_ChangingPassword.fromJson(Map<String, dynamic> json) =>
      _$$_ChangingPasswordFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.changingPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangingPassword);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return changingPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return changingPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (changingPassword != null) {
      return changingPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return changingPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return changingPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (changingPassword != null) {
      return changingPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangingPasswordToJson(
      this,
    );
  }
}

abstract class _ChangingPassword extends FirebaseState {
  const factory _ChangingPassword() = _$_ChangingPassword;
  const _ChangingPassword._() : super._();

  factory _ChangingPassword.fromJson(Map<String, dynamic> json) =
      _$_ChangingPassword.fromJson;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_PasswordChanged extends _PasswordChanged {
  const _$_PasswordChanged({final String? $type})
      : $type = $type ?? 'passwordChanged',
        super._();

  factory _$_PasswordChanged.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordChangedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.passwordChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PasswordChanged);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return passwordChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return passwordChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordChangedToJson(
      this,
    );
  }
}

abstract class _PasswordChanged extends FirebaseState {
  const factory _PasswordChanged() = _$_PasswordChanged;
  const _PasswordChanged._() : super._();

  factory _PasswordChanged.fromJson(Map<String, dynamic> json) =
      _$_PasswordChanged.fromJson;
}

/// @nodoc
abstract class _$$_SendingPasswordResetEmailCopyWith<$Res> {
  factory _$$_SendingPasswordResetEmailCopyWith(
          _$_SendingPasswordResetEmail value,
          $Res Function(_$_SendingPasswordResetEmail) then) =
      __$$_SendingPasswordResetEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendingPasswordResetEmailCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_SendingPasswordResetEmail>
    implements _$$_SendingPasswordResetEmailCopyWith<$Res> {
  __$$_SendingPasswordResetEmailCopyWithImpl(
      _$_SendingPasswordResetEmail _value,
      $Res Function(_$_SendingPasswordResetEmail) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_SendingPasswordResetEmail extends _SendingPasswordResetEmail {
  const _$_SendingPasswordResetEmail({final String? $type})
      : $type = $type ?? 'sendingPasswordResetEmail',
        super._();

  factory _$_SendingPasswordResetEmail.fromJson(Map<String, dynamic> json) =>
      _$$_SendingPasswordResetEmailFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.sendingPasswordResetEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendingPasswordResetEmail);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return sendingPasswordResetEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return sendingPasswordResetEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (sendingPasswordResetEmail != null) {
      return sendingPasswordResetEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return sendingPasswordResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return sendingPasswordResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (sendingPasswordResetEmail != null) {
      return sendingPasswordResetEmail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendingPasswordResetEmailToJson(
      this,
    );
  }
}

abstract class _SendingPasswordResetEmail extends FirebaseState {
  const factory _SendingPasswordResetEmail() = _$_SendingPasswordResetEmail;
  const _SendingPasswordResetEmail._() : super._();

  factory _SendingPasswordResetEmail.fromJson(Map<String, dynamic> json) =
      _$_SendingPasswordResetEmail.fromJson;
}

/// @nodoc
abstract class _$$_SentPasswordResetEmailCopyWith<$Res> {
  factory _$$_SentPasswordResetEmailCopyWith(_$_SentPasswordResetEmail value,
          $Res Function(_$_SentPasswordResetEmail) then) =
      __$$_SentPasswordResetEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SentPasswordResetEmailCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_SentPasswordResetEmail>
    implements _$$_SentPasswordResetEmailCopyWith<$Res> {
  __$$_SentPasswordResetEmailCopyWithImpl(_$_SentPasswordResetEmail _value,
      $Res Function(_$_SentPasswordResetEmail) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_SentPasswordResetEmail extends _SentPasswordResetEmail {
  const _$_SentPasswordResetEmail({final String? $type})
      : $type = $type ?? 'sentPasswordResetEmail',
        super._();

  factory _$_SentPasswordResetEmail.fromJson(Map<String, dynamic> json) =>
      _$$_SentPasswordResetEmailFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.sentPasswordResetEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SentPasswordResetEmail);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return sentPasswordResetEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return sentPasswordResetEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (sentPasswordResetEmail != null) {
      return sentPasswordResetEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return sentPasswordResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return sentPasswordResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (sentPasswordResetEmail != null) {
      return sentPasswordResetEmail(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SentPasswordResetEmailToJson(
      this,
    );
  }
}

abstract class _SentPasswordResetEmail extends FirebaseState {
  const factory _SentPasswordResetEmail() = _$_SentPasswordResetEmail;
  const _SentPasswordResetEmail._() : super._();

  factory _SentPasswordResetEmail.fromJson(Map<String, dynamic> json) =
      _$_SentPasswordResetEmail.fromJson;
}

/// @nodoc
abstract class _$$_DeletingAccountCopyWith<$Res> {
  factory _$$_DeletingAccountCopyWith(
          _$_DeletingAccount value, $Res Function(_$_DeletingAccount) then) =
      __$$_DeletingAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletingAccountCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_DeletingAccount>
    implements _$$_DeletingAccountCopyWith<$Res> {
  __$$_DeletingAccountCopyWithImpl(
      _$_DeletingAccount _value, $Res Function(_$_DeletingAccount) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_DeletingAccount extends _DeletingAccount {
  const _$_DeletingAccount({final String? $type})
      : $type = $type ?? 'deletingAccount',
        super._();

  factory _$_DeletingAccount.fromJson(Map<String, dynamic> json) =>
      _$$_DeletingAccountFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.deletingAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeletingAccount);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return deletingAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return deletingAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (deletingAccount != null) {
      return deletingAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return deletingAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return deletingAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (deletingAccount != null) {
      return deletingAccount(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeletingAccountToJson(
      this,
    );
  }
}

abstract class _DeletingAccount extends FirebaseState {
  const factory _DeletingAccount() = _$_DeletingAccount;
  const _DeletingAccount._() : super._();

  factory _DeletingAccount.fromJson(Map<String, dynamic> json) =
      _$_DeletingAccount.fromJson;
}

/// @nodoc
abstract class _$$_ErrorOccuredCopyWith<$Res> {
  factory _$$_ErrorOccuredCopyWith(
          _$_ErrorOccured value, $Res Function(_$_ErrorOccured) then) =
      __$$_ErrorOccuredCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ErrorOccuredCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res, _$_ErrorOccured>
    implements _$$_ErrorOccuredCopyWith<$Res> {
  __$$_ErrorOccuredCopyWithImpl(
      _$_ErrorOccured _value, $Res Function(_$_ErrorOccured) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ErrorOccured(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorOccured extends _ErrorOccured {
  const _$_ErrorOccured({this.message, final String? $type})
      : $type = $type ?? 'errorOccured',
        super._();

  factory _$_ErrorOccured.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorOccuredFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirebaseState.errorOccured(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorOccured &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorOccuredCopyWith<_$_ErrorOccured> get copyWith =>
      __$$_ErrorOccuredCopyWithImpl<_$_ErrorOccured>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function() loggingOut,
    required TResult Function(String? message) loggedOut,
    required TResult Function() signingUp,
    required TResult Function() changingPassword,
    required TResult Function() passwordChanged,
    required TResult Function() sendingPasswordResetEmail,
    required TResult Function() sentPasswordResetEmail,
    required TResult Function() deletingAccount,
    required TResult Function(String? message) errorOccured,
  }) {
    return errorOccured(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loggingIn,
    TResult? Function(User user)? loggedIn,
    TResult? Function()? loggingOut,
    TResult? Function(String? message)? loggedOut,
    TResult? Function()? signingUp,
    TResult? Function()? changingPassword,
    TResult? Function()? passwordChanged,
    TResult? Function()? sendingPasswordResetEmail,
    TResult? Function()? sentPasswordResetEmail,
    TResult? Function()? deletingAccount,
    TResult? Function(String? message)? errorOccured,
  }) {
    return errorOccured?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function()? loggingOut,
    TResult Function(String? message)? loggedOut,
    TResult Function()? signingUp,
    TResult Function()? changingPassword,
    TResult Function()? passwordChanged,
    TResult Function()? sendingPasswordResetEmail,
    TResult Function()? sentPasswordResetEmail,
    TResult Function()? deletingAccount,
    TResult Function(String? message)? errorOccured,
    required TResult orElse(),
  }) {
    if (errorOccured != null) {
      return errorOccured(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SigningUp value) signingUp,
    required TResult Function(_ChangingPassword value) changingPassword,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SendingPasswordResetEmail value)
        sendingPasswordResetEmail,
    required TResult Function(_SentPasswordResetEmail value)
        sentPasswordResetEmail,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_ErrorOccured value) errorOccured,
  }) {
    return errorOccured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SigningUp value)? signingUp,
    TResult? Function(_ChangingPassword value)? changingPassword,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult? Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_ErrorOccured value)? errorOccured,
  }) {
    return errorOccured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SigningUp value)? signingUp,
    TResult Function(_ChangingPassword value)? changingPassword,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SendingPasswordResetEmail value)?
        sendingPasswordResetEmail,
    TResult Function(_SentPasswordResetEmail value)? sentPasswordResetEmail,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (errorOccured != null) {
      return errorOccured(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorOccuredToJson(
      this,
    );
  }
}

abstract class _ErrorOccured extends FirebaseState {
  const factory _ErrorOccured({final String? message}) = _$_ErrorOccured;
  const _ErrorOccured._() : super._();

  factory _ErrorOccured.fromJson(Map<String, dynamic> json) =
      _$_ErrorOccured.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ErrorOccuredCopyWith<_$_ErrorOccured> get copyWith =>
      throw _privateConstructorUsedError;
}
