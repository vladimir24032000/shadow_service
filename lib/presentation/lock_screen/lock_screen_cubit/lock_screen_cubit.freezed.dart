// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lock_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LockScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preparing,
    required TResult Function(String pin) hasPin,
    required TResult Function() createPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preparing,
    TResult? Function(String pin)? hasPin,
    TResult? Function()? createPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(String pin)? hasPin,
    TResult Function()? createPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Preparing value) preparing,
    required TResult Function(HasPin value) hasPin,
    required TResult Function(CreatePin value) createPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Preparing value)? preparing,
    TResult? Function(HasPin value)? hasPin,
    TResult? Function(CreatePin value)? createPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(HasPin value)? hasPin,
    TResult Function(CreatePin value)? createPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockScreenStateCopyWith<$Res> {
  factory $LockScreenStateCopyWith(
          LockScreenState value, $Res Function(LockScreenState) then) =
      _$LockScreenStateCopyWithImpl<$Res, LockScreenState>;
}

/// @nodoc
class _$LockScreenStateCopyWithImpl<$Res, $Val extends LockScreenState>
    implements $LockScreenStateCopyWith<$Res> {
  _$LockScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PreparingCopyWith<$Res> {
  factory _$$PreparingCopyWith(
          _$Preparing value, $Res Function(_$Preparing) then) =
      __$$PreparingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreparingCopyWithImpl<$Res>
    extends _$LockScreenStateCopyWithImpl<$Res, _$Preparing>
    implements _$$PreparingCopyWith<$Res> {
  __$$PreparingCopyWithImpl(
      _$Preparing _value, $Res Function(_$Preparing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Preparing implements Preparing {
  const _$Preparing();

  @override
  String toString() {
    return 'LockScreenState.preparing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Preparing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preparing,
    required TResult Function(String pin) hasPin,
    required TResult Function() createPin,
  }) {
    return preparing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preparing,
    TResult? Function(String pin)? hasPin,
    TResult? Function()? createPin,
  }) {
    return preparing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(String pin)? hasPin,
    TResult Function()? createPin,
    required TResult orElse(),
  }) {
    if (preparing != null) {
      return preparing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Preparing value) preparing,
    required TResult Function(HasPin value) hasPin,
    required TResult Function(CreatePin value) createPin,
  }) {
    return preparing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Preparing value)? preparing,
    TResult? Function(HasPin value)? hasPin,
    TResult? Function(CreatePin value)? createPin,
  }) {
    return preparing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(HasPin value)? hasPin,
    TResult Function(CreatePin value)? createPin,
    required TResult orElse(),
  }) {
    if (preparing != null) {
      return preparing(this);
    }
    return orElse();
  }
}

abstract class Preparing implements LockScreenState {
  const factory Preparing() = _$Preparing;
}

/// @nodoc
abstract class _$$HasPinCopyWith<$Res> {
  factory _$$HasPinCopyWith(_$HasPin value, $Res Function(_$HasPin) then) =
      __$$HasPinCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$HasPinCopyWithImpl<$Res>
    extends _$LockScreenStateCopyWithImpl<$Res, _$HasPin>
    implements _$$HasPinCopyWith<$Res> {
  __$$HasPinCopyWithImpl(_$HasPin _value, $Res Function(_$HasPin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$HasPin(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HasPin implements HasPin {
  const _$HasPin({required this.pin});

  @override
  final String pin;

  @override
  String toString() {
    return 'LockScreenState.hasPin(pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasPin &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HasPinCopyWith<_$HasPin> get copyWith =>
      __$$HasPinCopyWithImpl<_$HasPin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preparing,
    required TResult Function(String pin) hasPin,
    required TResult Function() createPin,
  }) {
    return hasPin(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preparing,
    TResult? Function(String pin)? hasPin,
    TResult? Function()? createPin,
  }) {
    return hasPin?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(String pin)? hasPin,
    TResult Function()? createPin,
    required TResult orElse(),
  }) {
    if (hasPin != null) {
      return hasPin(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Preparing value) preparing,
    required TResult Function(HasPin value) hasPin,
    required TResult Function(CreatePin value) createPin,
  }) {
    return hasPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Preparing value)? preparing,
    TResult? Function(HasPin value)? hasPin,
    TResult? Function(CreatePin value)? createPin,
  }) {
    return hasPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(HasPin value)? hasPin,
    TResult Function(CreatePin value)? createPin,
    required TResult orElse(),
  }) {
    if (hasPin != null) {
      return hasPin(this);
    }
    return orElse();
  }
}

abstract class HasPin implements LockScreenState {
  const factory HasPin({required final String pin}) = _$HasPin;

  String get pin;
  @JsonKey(ignore: true)
  _$$HasPinCopyWith<_$HasPin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePinCopyWith<$Res> {
  factory _$$CreatePinCopyWith(
          _$CreatePin value, $Res Function(_$CreatePin) then) =
      __$$CreatePinCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatePinCopyWithImpl<$Res>
    extends _$LockScreenStateCopyWithImpl<$Res, _$CreatePin>
    implements _$$CreatePinCopyWith<$Res> {
  __$$CreatePinCopyWithImpl(
      _$CreatePin _value, $Res Function(_$CreatePin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatePin implements CreatePin {
  const _$CreatePin();

  @override
  String toString() {
    return 'LockScreenState.createPin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatePin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preparing,
    required TResult Function(String pin) hasPin,
    required TResult Function() createPin,
  }) {
    return createPin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preparing,
    TResult? Function(String pin)? hasPin,
    TResult? Function()? createPin,
  }) {
    return createPin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(String pin)? hasPin,
    TResult Function()? createPin,
    required TResult orElse(),
  }) {
    if (createPin != null) {
      return createPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Preparing value) preparing,
    required TResult Function(HasPin value) hasPin,
    required TResult Function(CreatePin value) createPin,
  }) {
    return createPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Preparing value)? preparing,
    TResult? Function(HasPin value)? hasPin,
    TResult? Function(CreatePin value)? createPin,
  }) {
    return createPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(HasPin value)? hasPin,
    TResult Function(CreatePin value)? createPin,
    required TResult orElse(),
  }) {
    if (createPin != null) {
      return createPin(this);
    }
    return orElse();
  }
}

abstract class CreatePin implements LockScreenState {
  const factory CreatePin() = _$CreatePin;
}
