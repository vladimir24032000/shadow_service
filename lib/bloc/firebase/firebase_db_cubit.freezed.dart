// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_db_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseDBState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestInProgress,
    required TResult Function(ShadowUser shadowUser) userExists,
    required TResult Function() userNotExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestInProgress,
    TResult? Function(ShadowUser shadowUser)? userExists,
    TResult? Function()? userNotExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestInProgress,
    TResult Function(ShadowUser shadowUser)? userExists,
    TResult Function()? userNotExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInProgress value) requestInProgress,
    required TResult Function(UserExists value) userExists,
    required TResult Function(UserNotExists value) userNotExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInProgress value)? requestInProgress,
    TResult? Function(UserExists value)? userExists,
    TResult? Function(UserNotExists value)? userNotExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInProgress value)? requestInProgress,
    TResult Function(UserExists value)? userExists,
    TResult Function(UserNotExists value)? userNotExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseDBStateCopyWith<$Res> {
  factory $FirebaseDBStateCopyWith(
          FirebaseDBState value, $Res Function(FirebaseDBState) then) =
      _$FirebaseDBStateCopyWithImpl<$Res, FirebaseDBState>;
}

/// @nodoc
class _$FirebaseDBStateCopyWithImpl<$Res, $Val extends FirebaseDBState>
    implements $FirebaseDBStateCopyWith<$Res> {
  _$FirebaseDBStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestInProgressCopyWith<$Res> {
  factory _$$RequestInProgressCopyWith(
          _$RequestInProgress value, $Res Function(_$RequestInProgress) then) =
      __$$RequestInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestInProgressCopyWithImpl<$Res>
    extends _$FirebaseDBStateCopyWithImpl<$Res, _$RequestInProgress>
    implements _$$RequestInProgressCopyWith<$Res> {
  __$$RequestInProgressCopyWithImpl(
      _$RequestInProgress _value, $Res Function(_$RequestInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestInProgress implements RequestInProgress {
  const _$RequestInProgress();

  @override
  String toString() {
    return 'FirebaseDBState.requestInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestInProgress,
    required TResult Function(ShadowUser shadowUser) userExists,
    required TResult Function() userNotExists,
  }) {
    return requestInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestInProgress,
    TResult? Function(ShadowUser shadowUser)? userExists,
    TResult? Function()? userNotExists,
  }) {
    return requestInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestInProgress,
    TResult Function(ShadowUser shadowUser)? userExists,
    TResult Function()? userNotExists,
    required TResult orElse(),
  }) {
    if (requestInProgress != null) {
      return requestInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInProgress value) requestInProgress,
    required TResult Function(UserExists value) userExists,
    required TResult Function(UserNotExists value) userNotExists,
  }) {
    return requestInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInProgress value)? requestInProgress,
    TResult? Function(UserExists value)? userExists,
    TResult? Function(UserNotExists value)? userNotExists,
  }) {
    return requestInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInProgress value)? requestInProgress,
    TResult Function(UserExists value)? userExists,
    TResult Function(UserNotExists value)? userNotExists,
    required TResult orElse(),
  }) {
    if (requestInProgress != null) {
      return requestInProgress(this);
    }
    return orElse();
  }
}

abstract class RequestInProgress implements FirebaseDBState {
  const factory RequestInProgress() = _$RequestInProgress;
}

/// @nodoc
abstract class _$$UserExistsCopyWith<$Res> {
  factory _$$UserExistsCopyWith(
          _$UserExists value, $Res Function(_$UserExists) then) =
      __$$UserExistsCopyWithImpl<$Res>;
  @useResult
  $Res call({ShadowUser shadowUser});

  $ShadowUserCopyWith<$Res> get shadowUser;
}

/// @nodoc
class __$$UserExistsCopyWithImpl<$Res>
    extends _$FirebaseDBStateCopyWithImpl<$Res, _$UserExists>
    implements _$$UserExistsCopyWith<$Res> {
  __$$UserExistsCopyWithImpl(
      _$UserExists _value, $Res Function(_$UserExists) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shadowUser = null,
  }) {
    return _then(_$UserExists(
      shadowUser: null == shadowUser
          ? _value.shadowUser
          : shadowUser // ignore: cast_nullable_to_non_nullable
              as ShadowUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShadowUserCopyWith<$Res> get shadowUser {
    return $ShadowUserCopyWith<$Res>(_value.shadowUser, (value) {
      return _then(_value.copyWith(shadowUser: value));
    });
  }
}

/// @nodoc

class _$UserExists implements UserExists {
  const _$UserExists({required this.shadowUser});

  @override
  final ShadowUser shadowUser;

  @override
  String toString() {
    return 'FirebaseDBState.userExists(shadowUser: $shadowUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExists &&
            (identical(other.shadowUser, shadowUser) ||
                other.shadowUser == shadowUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shadowUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExistsCopyWith<_$UserExists> get copyWith =>
      __$$UserExistsCopyWithImpl<_$UserExists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestInProgress,
    required TResult Function(ShadowUser shadowUser) userExists,
    required TResult Function() userNotExists,
  }) {
    return userExists(shadowUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestInProgress,
    TResult? Function(ShadowUser shadowUser)? userExists,
    TResult? Function()? userNotExists,
  }) {
    return userExists?.call(shadowUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestInProgress,
    TResult Function(ShadowUser shadowUser)? userExists,
    TResult Function()? userNotExists,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists(shadowUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInProgress value) requestInProgress,
    required TResult Function(UserExists value) userExists,
    required TResult Function(UserNotExists value) userNotExists,
  }) {
    return userExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInProgress value)? requestInProgress,
    TResult? Function(UserExists value)? userExists,
    TResult? Function(UserNotExists value)? userNotExists,
  }) {
    return userExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInProgress value)? requestInProgress,
    TResult Function(UserExists value)? userExists,
    TResult Function(UserNotExists value)? userNotExists,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists(this);
    }
    return orElse();
  }
}

abstract class UserExists implements FirebaseDBState {
  const factory UserExists({required final ShadowUser shadowUser}) =
      _$UserExists;

  ShadowUser get shadowUser;
  @JsonKey(ignore: true)
  _$$UserExistsCopyWith<_$UserExists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNotExistsCopyWith<$Res> {
  factory _$$UserNotExistsCopyWith(
          _$UserNotExists value, $Res Function(_$UserNotExists) then) =
      __$$UserNotExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotExistsCopyWithImpl<$Res>
    extends _$FirebaseDBStateCopyWithImpl<$Res, _$UserNotExists>
    implements _$$UserNotExistsCopyWith<$Res> {
  __$$UserNotExistsCopyWithImpl(
      _$UserNotExists _value, $Res Function(_$UserNotExists) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotExists implements UserNotExists {
  const _$UserNotExists();

  @override
  String toString() {
    return 'FirebaseDBState.userNotExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestInProgress,
    required TResult Function(ShadowUser shadowUser) userExists,
    required TResult Function() userNotExists,
  }) {
    return userNotExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestInProgress,
    TResult? Function(ShadowUser shadowUser)? userExists,
    TResult? Function()? userNotExists,
  }) {
    return userNotExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestInProgress,
    TResult Function(ShadowUser shadowUser)? userExists,
    TResult Function()? userNotExists,
    required TResult orElse(),
  }) {
    if (userNotExists != null) {
      return userNotExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestInProgress value) requestInProgress,
    required TResult Function(UserExists value) userExists,
    required TResult Function(UserNotExists value) userNotExists,
  }) {
    return userNotExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestInProgress value)? requestInProgress,
    TResult? Function(UserExists value)? userExists,
    TResult? Function(UserNotExists value)? userNotExists,
  }) {
    return userNotExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestInProgress value)? requestInProgress,
    TResult Function(UserExists value)? userExists,
    TResult Function(UserNotExists value)? userNotExists,
    required TResult orElse(),
  }) {
    if (userNotExists != null) {
      return userNotExists(this);
    }
    return orElse();
  }
}

abstract class UserNotExists implements FirebaseDBState {
  const factory UserNotExists() = _$UserNotExists;
}
