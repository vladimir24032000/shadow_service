// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_emitter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$_ErrorEmitterEvent<T> {
  T get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ErrorEmitterEventCopyWith<T, _ErrorEmitterEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorEmitterEventCopyWith<T, $Res> {
  factory _$ErrorEmitterEventCopyWith(_ErrorEmitterEvent<T> value,
          $Res Function(_ErrorEmitterEvent<T>) then) =
      __$ErrorEmitterEventCopyWithImpl<T, $Res, _ErrorEmitterEvent<T>>;
  @useResult
  $Res call({T error});
}

/// @nodoc
class __$ErrorEmitterEventCopyWithImpl<T, $Res,
        $Val extends _ErrorEmitterEvent<T>>
    implements _$ErrorEmitterEventCopyWith<T, $Res> {
  __$ErrorEmitterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__ErrorEmitterEventCopyWith<T, $Res>
    implements _$ErrorEmitterEventCopyWith<T, $Res> {
  factory _$$__ErrorEmitterEventCopyWith(_$__ErrorEmitterEvent<T> value,
          $Res Function(_$__ErrorEmitterEvent<T>) then) =
      __$$__ErrorEmitterEventCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T error});
}

/// @nodoc
class __$$__ErrorEmitterEventCopyWithImpl<T, $Res>
    extends __$ErrorEmitterEventCopyWithImpl<T, $Res, _$__ErrorEmitterEvent<T>>
    implements _$$__ErrorEmitterEventCopyWith<T, $Res> {
  __$$__ErrorEmitterEventCopyWithImpl(_$__ErrorEmitterEvent<T> _value,
      $Res Function(_$__ErrorEmitterEvent<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$__ErrorEmitterEvent<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$__ErrorEmitterEvent<T> implements __ErrorEmitterEvent<T> {
  const _$__ErrorEmitterEvent(this.error);

  @override
  final T error;

  @override
  String toString() {
    return '_ErrorEmitterEvent<$T>(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__ErrorEmitterEvent<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__ErrorEmitterEventCopyWith<T, _$__ErrorEmitterEvent<T>> get copyWith =>
      __$$__ErrorEmitterEventCopyWithImpl<T, _$__ErrorEmitterEvent<T>>(
          this, _$identity);
}

abstract class __ErrorEmitterEvent<T> implements _ErrorEmitterEvent<T> {
  const factory __ErrorEmitterEvent(final T error) = _$__ErrorEmitterEvent<T>;

  @override
  T get error;
  @override
  @JsonKey(ignore: true)
  _$$__ErrorEmitterEventCopyWith<T, _$__ErrorEmitterEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ErrorEmitterState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorEmitterStateCopyWith<T, $Res> {
  factory $ErrorEmitterStateCopyWith(ErrorEmitterState<T> value,
          $Res Function(ErrorEmitterState<T>) then) =
      _$ErrorEmitterStateCopyWithImpl<T, $Res, ErrorEmitterState<T>>;
}

/// @nodoc
class _$ErrorEmitterStateCopyWithImpl<T, $Res,
        $Val extends ErrorEmitterState<T>>
    implements $ErrorEmitterStateCopyWith<T, $Res> {
  _$ErrorEmitterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<T, $Res> {
  factory _$$_InitialCopyWith(
          _$_Initial<T> value, $Res Function(_$_Initial<T>) then) =
      __$$_InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<T, $Res>
    extends _$ErrorEmitterStateCopyWithImpl<T, $Res, _$_Initial<T>>
    implements _$$_InitialCopyWith<T, $Res> {
  __$$_InitialCopyWithImpl(
      _$_Initial<T> _value, $Res Function(_$_Initial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'ErrorEmitterState<$T>.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ErrorEmitterState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<T, $Res> {
  factory _$$_ErrorCopyWith(
          _$_Error<T> value, $Res Function(_$_Error<T>) then) =
      __$$_ErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<T, $Res>
    extends _$ErrorEmitterStateCopyWithImpl<T, $Res, _$_Error<T>>
    implements _$$_ErrorCopyWith<T, $Res> {
  __$$_ErrorCopyWithImpl(_$_Error<T> _value, $Res Function(_$_Error<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Error<T> implements _Error<T> {
  const _$_Error(this.error);

  @override
  final T error;

  @override
  String toString() {
    return 'ErrorEmitterState<$T>.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      __$$_ErrorCopyWithImpl<T, _$_Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements ErrorEmitterState<T> {
  const factory _Error(final T error) = _$_Error<T>;

  T get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<T, _$_Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
