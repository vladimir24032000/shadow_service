// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shadow_bluetooth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bluetoothIsOff,
    required TResult Function() locationServicesAreOff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bluetoothIsOff,
    TResult? Function()? locationServicesAreOff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bluetoothIsOff,
    TResult Function()? locationServicesAreOff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothIsOff value) bluetoothIsOff,
    required TResult Function(GpsIsOff value) locationServicesAreOff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothIsOff value)? bluetoothIsOff,
    TResult? Function(GpsIsOff value)? locationServicesAreOff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothIsOff value)? bluetoothIsOff,
    TResult Function(GpsIsOff value)? locationServicesAreOff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BluetoothIsOffCopyWith<$Res> {
  factory _$$BluetoothIsOffCopyWith(
          _$BluetoothIsOff value, $Res Function(_$BluetoothIsOff) then) =
      __$$BluetoothIsOffCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BluetoothIsOffCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BluetoothIsOff>
    implements _$$BluetoothIsOffCopyWith<$Res> {
  __$$BluetoothIsOffCopyWithImpl(
      _$BluetoothIsOff _value, $Res Function(_$BluetoothIsOff) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BluetoothIsOff implements BluetoothIsOff {
  const _$BluetoothIsOff();

  @override
  String toString() {
    return 'Failure.bluetoothIsOff()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BluetoothIsOff);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bluetoothIsOff,
    required TResult Function() locationServicesAreOff,
  }) {
    return bluetoothIsOff();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bluetoothIsOff,
    TResult? Function()? locationServicesAreOff,
  }) {
    return bluetoothIsOff?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bluetoothIsOff,
    TResult Function()? locationServicesAreOff,
    required TResult orElse(),
  }) {
    if (bluetoothIsOff != null) {
      return bluetoothIsOff();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothIsOff value) bluetoothIsOff,
    required TResult Function(GpsIsOff value) locationServicesAreOff,
  }) {
    return bluetoothIsOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothIsOff value)? bluetoothIsOff,
    TResult? Function(GpsIsOff value)? locationServicesAreOff,
  }) {
    return bluetoothIsOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothIsOff value)? bluetoothIsOff,
    TResult Function(GpsIsOff value)? locationServicesAreOff,
    required TResult orElse(),
  }) {
    if (bluetoothIsOff != null) {
      return bluetoothIsOff(this);
    }
    return orElse();
  }
}

abstract class BluetoothIsOff implements Failure {
  const factory BluetoothIsOff() = _$BluetoothIsOff;
}

/// @nodoc
abstract class _$$GpsIsOffCopyWith<$Res> {
  factory _$$GpsIsOffCopyWith(
          _$GpsIsOff value, $Res Function(_$GpsIsOff) then) =
      __$$GpsIsOffCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GpsIsOffCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$GpsIsOff>
    implements _$$GpsIsOffCopyWith<$Res> {
  __$$GpsIsOffCopyWithImpl(_$GpsIsOff _value, $Res Function(_$GpsIsOff) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GpsIsOff implements GpsIsOff {
  const _$GpsIsOff();

  @override
  String toString() {
    return 'Failure.locationServicesAreOff()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GpsIsOff);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bluetoothIsOff,
    required TResult Function() locationServicesAreOff,
  }) {
    return locationServicesAreOff();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? bluetoothIsOff,
    TResult? Function()? locationServicesAreOff,
  }) {
    return locationServicesAreOff?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bluetoothIsOff,
    TResult Function()? locationServicesAreOff,
    required TResult orElse(),
  }) {
    if (locationServicesAreOff != null) {
      return locationServicesAreOff();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BluetoothIsOff value) bluetoothIsOff,
    required TResult Function(GpsIsOff value) locationServicesAreOff,
  }) {
    return locationServicesAreOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BluetoothIsOff value)? bluetoothIsOff,
    TResult? Function(GpsIsOff value)? locationServicesAreOff,
  }) {
    return locationServicesAreOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BluetoothIsOff value)? bluetoothIsOff,
    TResult Function(GpsIsOff value)? locationServicesAreOff,
    required TResult orElse(),
  }) {
    if (locationServicesAreOff != null) {
      return locationServicesAreOff(this);
    }
    return orElse();
  }
}

abstract class GpsIsOff implements Failure {
  const factory GpsIsOff() = _$GpsIsOff;
}
