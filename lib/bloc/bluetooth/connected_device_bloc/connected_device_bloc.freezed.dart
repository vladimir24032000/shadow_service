// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connected_device_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectedDeviceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() zero,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? zero,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? zero,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Zero value) zero,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Zero value)? zero,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Zero value)? zero,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectedDeviceEventCopyWith<$Res> {
  factory $ConnectedDeviceEventCopyWith(ConnectedDeviceEvent value,
          $Res Function(ConnectedDeviceEvent) then) =
      _$ConnectedDeviceEventCopyWithImpl<$Res, ConnectedDeviceEvent>;
}

/// @nodoc
class _$ConnectedDeviceEventCopyWithImpl<$Res,
        $Val extends ConnectedDeviceEvent>
    implements $ConnectedDeviceEventCopyWith<$Res> {
  _$ConnectedDeviceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ZeroCopyWith<$Res> {
  factory _$$_ZeroCopyWith(_$_Zero value, $Res Function(_$_Zero) then) =
      __$$_ZeroCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ZeroCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_Zero>
    implements _$$_ZeroCopyWith<$Res> {
  __$$_ZeroCopyWithImpl(_$_Zero _value, $Res Function(_$_Zero) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Zero with DiagnosticableTreeMixin implements _Zero {
  const _$_Zero();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.zero()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ConnectedDeviceEvent.zero'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Zero);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() zero,
  }) {
    return zero();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? zero,
  }) {
    return zero?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? zero,
    required TResult orElse(),
  }) {
    if (zero != null) {
      return zero();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Zero value) zero,
  }) {
    return zero(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Zero value)? zero,
  }) {
    return zero?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Zero value)? zero,
    required TResult orElse(),
  }) {
    if (zero != null) {
      return zero(this);
    }
    return orElse();
  }
}

abstract class _Zero implements ConnectedDeviceEvent {
  const factory _Zero() = _$_Zero;
}

/// @nodoc
mixin _$ConnectedDeviceBlocState {
  BaseShadowBluetoothDevice get device => throw _privateConstructorUsedError;
  bool get commandInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectedDeviceBlocStateCopyWith<ConnectedDeviceBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectedDeviceBlocStateCopyWith<$Res> {
  factory $ConnectedDeviceBlocStateCopyWith(ConnectedDeviceBlocState value,
          $Res Function(ConnectedDeviceBlocState) then) =
      _$ConnectedDeviceBlocStateCopyWithImpl<$Res, ConnectedDeviceBlocState>;
  @useResult
  $Res call({BaseShadowBluetoothDevice device, bool commandInProgress});
}

/// @nodoc
class _$ConnectedDeviceBlocStateCopyWithImpl<$Res,
        $Val extends ConnectedDeviceBlocState>
    implements $ConnectedDeviceBlocStateCopyWith<$Res> {
  _$ConnectedDeviceBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? commandInProgress = null,
  }) {
    return _then(_value.copyWith(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BaseShadowBluetoothDevice,
      commandInProgress: null == commandInProgress
          ? _value.commandInProgress
          : commandInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectedDeviceBlocStateCopyWith<$Res>
    implements $ConnectedDeviceBlocStateCopyWith<$Res> {
  factory _$$_ConnectedDeviceBlocStateCopyWith(
          _$_ConnectedDeviceBlocState value,
          $Res Function(_$_ConnectedDeviceBlocState) then) =
      __$$_ConnectedDeviceBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseShadowBluetoothDevice device, bool commandInProgress});
}

/// @nodoc
class __$$_ConnectedDeviceBlocStateCopyWithImpl<$Res>
    extends _$ConnectedDeviceBlocStateCopyWithImpl<$Res,
        _$_ConnectedDeviceBlocState>
    implements _$$_ConnectedDeviceBlocStateCopyWith<$Res> {
  __$$_ConnectedDeviceBlocStateCopyWithImpl(_$_ConnectedDeviceBlocState _value,
      $Res Function(_$_ConnectedDeviceBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? commandInProgress = null,
  }) {
    return _then(_$_ConnectedDeviceBlocState(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BaseShadowBluetoothDevice,
      commandInProgress: null == commandInProgress
          ? _value.commandInProgress
          : commandInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConnectedDeviceBlocState
    with DiagnosticableTreeMixin
    implements _ConnectedDeviceBlocState {
  const _$_ConnectedDeviceBlocState(
      {required this.device, this.commandInProgress = false});

  @override
  final BaseShadowBluetoothDevice device;
  @override
  @JsonKey()
  final bool commandInProgress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceBlocState(device: $device, commandInProgress: $commandInProgress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectedDeviceBlocState'))
      ..add(DiagnosticsProperty('device', device))
      ..add(DiagnosticsProperty('commandInProgress', commandInProgress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectedDeviceBlocState &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.commandInProgress, commandInProgress) ||
                other.commandInProgress == commandInProgress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device, commandInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectedDeviceBlocStateCopyWith<_$_ConnectedDeviceBlocState>
      get copyWith => __$$_ConnectedDeviceBlocStateCopyWithImpl<
          _$_ConnectedDeviceBlocState>(this, _$identity);
}

abstract class _ConnectedDeviceBlocState implements ConnectedDeviceBlocState {
  const factory _ConnectedDeviceBlocState(
      {required final BaseShadowBluetoothDevice device,
      final bool commandInProgress}) = _$_ConnectedDeviceBlocState;

  @override
  BaseShadowBluetoothDevice get device;
  @override
  bool get commandInProgress;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectedDeviceBlocStateCopyWith<_$_ConnectedDeviceBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
