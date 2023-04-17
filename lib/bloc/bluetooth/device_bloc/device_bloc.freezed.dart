// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceEventCopyWith<$Res> {
  factory $DeviceEventCopyWith(
          DeviceEvent value, $Res Function(DeviceEvent) then) =
      _$DeviceEventCopyWithImpl<$Res, DeviceEvent>;
}

/// @nodoc
class _$DeviceEventCopyWithImpl<$Res, $Val extends DeviceEvent>
    implements $DeviceEventCopyWith<$Res> {
  _$DeviceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ConnectCopyWith<$Res> {
  factory _$$_ConnectCopyWith(
          _$_Connect value, $Res Function(_$_Connect) then) =
      __$$_ConnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectCopyWithImpl<$Res>
    extends _$DeviceEventCopyWithImpl<$Res, _$_Connect>
    implements _$$_ConnectCopyWith<$Res> {
  __$$_ConnectCopyWithImpl(_$_Connect _value, $Res Function(_$_Connect) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Connect implements _Connect {
  const _$_Connect();

  @override
  String toString() {
    return 'DeviceEvent.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Connect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _Connect implements DeviceEvent {
  const factory _Connect() = _$_Connect;
}

/// @nodoc
abstract class _$$_DisconnectCopyWith<$Res> {
  factory _$$_DisconnectCopyWith(
          _$_Disconnect value, $Res Function(_$_Disconnect) then) =
      __$$_DisconnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisconnectCopyWithImpl<$Res>
    extends _$DeviceEventCopyWithImpl<$Res, _$_Disconnect>
    implements _$$_DisconnectCopyWith<$Res> {
  __$$_DisconnectCopyWithImpl(
      _$_Disconnect _value, $Res Function(_$_Disconnect) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Disconnect implements _Disconnect {
  const _$_Disconnect();

  @override
  String toString() {
    return 'DeviceEvent.disconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Disconnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class _Disconnect implements DeviceEvent {
  const factory _Disconnect() = _$_Disconnect;
}

/// @nodoc
mixin _$_PrivateDeviceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setAvailable,
    required TResult Function() setConnecting,
    required TResult Function() setConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setAvailable,
    TResult? Function()? setConnecting,
    TResult? Function()? setConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setAvailable,
    TResult Function()? setConnecting,
    TResult Function()? setConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetAvailable value) setAvailable,
    required TResult Function(_SetConnecting value) setConnecting,
    required TResult Function(_SetConnected value) setConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetAvailable value)? setAvailable,
    TResult? Function(_SetConnecting value)? setConnecting,
    TResult? Function(_SetConnected value)? setConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetAvailable value)? setAvailable,
    TResult Function(_SetConnecting value)? setConnecting,
    TResult Function(_SetConnected value)? setConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PrivateDeviceEventCopyWith<$Res> {
  factory _$PrivateDeviceEventCopyWith(
          _PrivateDeviceEvent value, $Res Function(_PrivateDeviceEvent) then) =
      __$PrivateDeviceEventCopyWithImpl<$Res, _PrivateDeviceEvent>;
}

/// @nodoc
class __$PrivateDeviceEventCopyWithImpl<$Res, $Val extends _PrivateDeviceEvent>
    implements _$PrivateDeviceEventCopyWith<$Res> {
  __$PrivateDeviceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetAvailableCopyWith<$Res> {
  factory _$$_SetAvailableCopyWith(
          _$_SetAvailable value, $Res Function(_$_SetAvailable) then) =
      __$$_SetAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetAvailableCopyWithImpl<$Res>
    extends __$PrivateDeviceEventCopyWithImpl<$Res, _$_SetAvailable>
    implements _$$_SetAvailableCopyWith<$Res> {
  __$$_SetAvailableCopyWithImpl(
      _$_SetAvailable _value, $Res Function(_$_SetAvailable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetAvailable implements _SetAvailable {
  const _$_SetAvailable();

  @override
  String toString() {
    return '_PrivateDeviceEvent.setAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setAvailable,
    required TResult Function() setConnecting,
    required TResult Function() setConnected,
  }) {
    return setAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setAvailable,
    TResult? Function()? setConnecting,
    TResult? Function()? setConnected,
  }) {
    return setAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setAvailable,
    TResult Function()? setConnecting,
    TResult Function()? setConnected,
    required TResult orElse(),
  }) {
    if (setAvailable != null) {
      return setAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetAvailable value) setAvailable,
    required TResult Function(_SetConnecting value) setConnecting,
    required TResult Function(_SetConnected value) setConnected,
  }) {
    return setAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetAvailable value)? setAvailable,
    TResult? Function(_SetConnecting value)? setConnecting,
    TResult? Function(_SetConnected value)? setConnected,
  }) {
    return setAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetAvailable value)? setAvailable,
    TResult Function(_SetConnecting value)? setConnecting,
    TResult Function(_SetConnected value)? setConnected,
    required TResult orElse(),
  }) {
    if (setAvailable != null) {
      return setAvailable(this);
    }
    return orElse();
  }
}

abstract class _SetAvailable implements _PrivateDeviceEvent {
  const factory _SetAvailable() = _$_SetAvailable;
}

/// @nodoc
abstract class _$$_SetConnectingCopyWith<$Res> {
  factory _$$_SetConnectingCopyWith(
          _$_SetConnecting value, $Res Function(_$_SetConnecting) then) =
      __$$_SetConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetConnectingCopyWithImpl<$Res>
    extends __$PrivateDeviceEventCopyWithImpl<$Res, _$_SetConnecting>
    implements _$$_SetConnectingCopyWith<$Res> {
  __$$_SetConnectingCopyWithImpl(
      _$_SetConnecting _value, $Res Function(_$_SetConnecting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetConnecting implements _SetConnecting {
  const _$_SetConnecting();

  @override
  String toString() {
    return '_PrivateDeviceEvent.setConnecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetConnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setAvailable,
    required TResult Function() setConnecting,
    required TResult Function() setConnected,
  }) {
    return setConnecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setAvailable,
    TResult? Function()? setConnecting,
    TResult? Function()? setConnected,
  }) {
    return setConnecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setAvailable,
    TResult Function()? setConnecting,
    TResult Function()? setConnected,
    required TResult orElse(),
  }) {
    if (setConnecting != null) {
      return setConnecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetAvailable value) setAvailable,
    required TResult Function(_SetConnecting value) setConnecting,
    required TResult Function(_SetConnected value) setConnected,
  }) {
    return setConnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetAvailable value)? setAvailable,
    TResult? Function(_SetConnecting value)? setConnecting,
    TResult? Function(_SetConnected value)? setConnected,
  }) {
    return setConnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetAvailable value)? setAvailable,
    TResult Function(_SetConnecting value)? setConnecting,
    TResult Function(_SetConnected value)? setConnected,
    required TResult orElse(),
  }) {
    if (setConnecting != null) {
      return setConnecting(this);
    }
    return orElse();
  }
}

abstract class _SetConnecting implements _PrivateDeviceEvent {
  const factory _SetConnecting() = _$_SetConnecting;
}

/// @nodoc
abstract class _$$_SetConnectedCopyWith<$Res> {
  factory _$$_SetConnectedCopyWith(
          _$_SetConnected value, $Res Function(_$_SetConnected) then) =
      __$$_SetConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetConnectedCopyWithImpl<$Res>
    extends __$PrivateDeviceEventCopyWithImpl<$Res, _$_SetConnected>
    implements _$$_SetConnectedCopyWith<$Res> {
  __$$_SetConnectedCopyWithImpl(
      _$_SetConnected _value, $Res Function(_$_SetConnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetConnected implements _SetConnected {
  const _$_SetConnected();

  @override
  String toString() {
    return '_PrivateDeviceEvent.setConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setAvailable,
    required TResult Function() setConnecting,
    required TResult Function() setConnected,
  }) {
    return setConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setAvailable,
    TResult? Function()? setConnecting,
    TResult? Function()? setConnected,
  }) {
    return setConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setAvailable,
    TResult Function()? setConnecting,
    TResult Function()? setConnected,
    required TResult orElse(),
  }) {
    if (setConnected != null) {
      return setConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetAvailable value) setAvailable,
    required TResult Function(_SetConnecting value) setConnecting,
    required TResult Function(_SetConnected value) setConnected,
  }) {
    return setConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetAvailable value)? setAvailable,
    TResult? Function(_SetConnecting value)? setConnecting,
    TResult? Function(_SetConnected value)? setConnected,
  }) {
    return setConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetAvailable value)? setAvailable,
    TResult Function(_SetConnecting value)? setConnecting,
    TResult Function(_SetConnected value)? setConnected,
    required TResult orElse(),
  }) {
    if (setConnected != null) {
      return setConnected(this);
    }
    return orElse();
  }
}

abstract class _SetConnected implements _PrivateDeviceEvent {
  const factory _SetConnected() = _$_SetConnected;
}

/// @nodoc
mixin _$DeviceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(lt.BaseShadowBluetoothDevice device) available,
    required TResult Function(lt.BaseShadowBluetoothDevice device) connecting,
    required TResult Function(ConnectedDeviceBloc connectedDeviceBloc)
        connected,
    required TResult Function(lt.BaseShadowBluetoothDevice device)
        disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult? Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceBlocStateAvailable value) available,
    required TResult Function(DeviceBlocStateConnecting value) connecting,
    required TResult Function(DeviceBlocStateConnected value) connected,
    required TResult Function(DeviceBlocStateDisconnecting value) disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeviceBlocStateAvailable value)? available,
    TResult? Function(DeviceBlocStateConnecting value)? connecting,
    TResult? Function(DeviceBlocStateConnected value)? connected,
    TResult? Function(DeviceBlocStateDisconnecting value)? disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceBlocStateAvailable value)? available,
    TResult Function(DeviceBlocStateConnecting value)? connecting,
    TResult Function(DeviceBlocStateConnected value)? connected,
    TResult Function(DeviceBlocStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStateCopyWith<$Res> {
  factory $DeviceStateCopyWith(
          DeviceState value, $Res Function(DeviceState) then) =
      _$DeviceStateCopyWithImpl<$Res, DeviceState>;
}

/// @nodoc
class _$DeviceStateCopyWithImpl<$Res, $Val extends DeviceState>
    implements $DeviceStateCopyWith<$Res> {
  _$DeviceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeviceBlocStateAvailableCopyWith<$Res> {
  factory _$$DeviceBlocStateAvailableCopyWith(_$DeviceBlocStateAvailable value,
          $Res Function(_$DeviceBlocStateAvailable) then) =
      __$$DeviceBlocStateAvailableCopyWithImpl<$Res>;
  @useResult
  $Res call({lt.BaseShadowBluetoothDevice device});
}

/// @nodoc
class __$$DeviceBlocStateAvailableCopyWithImpl<$Res>
    extends _$DeviceStateCopyWithImpl<$Res, _$DeviceBlocStateAvailable>
    implements _$$DeviceBlocStateAvailableCopyWith<$Res> {
  __$$DeviceBlocStateAvailableCopyWithImpl(_$DeviceBlocStateAvailable _value,
      $Res Function(_$DeviceBlocStateAvailable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$DeviceBlocStateAvailable(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as lt.BaseShadowBluetoothDevice,
    ));
  }
}

/// @nodoc

class _$DeviceBlocStateAvailable extends DeviceBlocStateAvailable {
  const _$DeviceBlocStateAvailable({required this.device}) : super._();

  @override
  final lt.BaseShadowBluetoothDevice device;

  @override
  String toString() {
    return 'DeviceState.available(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceBlocStateAvailable &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceBlocStateAvailableCopyWith<_$DeviceBlocStateAvailable>
      get copyWith =>
          __$$DeviceBlocStateAvailableCopyWithImpl<_$DeviceBlocStateAvailable>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(lt.BaseShadowBluetoothDevice device) available,
    required TResult Function(lt.BaseShadowBluetoothDevice device) connecting,
    required TResult Function(ConnectedDeviceBloc connectedDeviceBloc)
        connected,
    required TResult Function(lt.BaseShadowBluetoothDevice device)
        disconnecting,
  }) {
    return available(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult? Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
  }) {
    return available?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceBlocStateAvailable value) available,
    required TResult Function(DeviceBlocStateConnecting value) connecting,
    required TResult Function(DeviceBlocStateConnected value) connected,
    required TResult Function(DeviceBlocStateDisconnecting value) disconnecting,
  }) {
    return available(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeviceBlocStateAvailable value)? available,
    TResult? Function(DeviceBlocStateConnecting value)? connecting,
    TResult? Function(DeviceBlocStateConnected value)? connected,
    TResult? Function(DeviceBlocStateDisconnecting value)? disconnecting,
  }) {
    return available?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceBlocStateAvailable value)? available,
    TResult Function(DeviceBlocStateConnecting value)? connecting,
    TResult Function(DeviceBlocStateConnected value)? connected,
    TResult Function(DeviceBlocStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(this);
    }
    return orElse();
  }
}

abstract class DeviceBlocStateAvailable extends DeviceState {
  const factory DeviceBlocStateAvailable(
          {required final lt.BaseShadowBluetoothDevice device}) =
      _$DeviceBlocStateAvailable;
  const DeviceBlocStateAvailable._() : super._();

  lt.BaseShadowBluetoothDevice get device;
  @JsonKey(ignore: true)
  _$$DeviceBlocStateAvailableCopyWith<_$DeviceBlocStateAvailable>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceBlocStateConnectingCopyWith<$Res> {
  factory _$$DeviceBlocStateConnectingCopyWith(
          _$DeviceBlocStateConnecting value,
          $Res Function(_$DeviceBlocStateConnecting) then) =
      __$$DeviceBlocStateConnectingCopyWithImpl<$Res>;
  @useResult
  $Res call({lt.BaseShadowBluetoothDevice device});
}

/// @nodoc
class __$$DeviceBlocStateConnectingCopyWithImpl<$Res>
    extends _$DeviceStateCopyWithImpl<$Res, _$DeviceBlocStateConnecting>
    implements _$$DeviceBlocStateConnectingCopyWith<$Res> {
  __$$DeviceBlocStateConnectingCopyWithImpl(_$DeviceBlocStateConnecting _value,
      $Res Function(_$DeviceBlocStateConnecting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$DeviceBlocStateConnecting(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as lt.BaseShadowBluetoothDevice,
    ));
  }
}

/// @nodoc

class _$DeviceBlocStateConnecting extends DeviceBlocStateConnecting {
  const _$DeviceBlocStateConnecting({required this.device}) : super._();

  @override
  final lt.BaseShadowBluetoothDevice device;

  @override
  String toString() {
    return 'DeviceState.connecting(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceBlocStateConnecting &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceBlocStateConnectingCopyWith<_$DeviceBlocStateConnecting>
      get copyWith => __$$DeviceBlocStateConnectingCopyWithImpl<
          _$DeviceBlocStateConnecting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(lt.BaseShadowBluetoothDevice device) available,
    required TResult Function(lt.BaseShadowBluetoothDevice device) connecting,
    required TResult Function(ConnectedDeviceBloc connectedDeviceBloc)
        connected,
    required TResult Function(lt.BaseShadowBluetoothDevice device)
        disconnecting,
  }) {
    return connecting(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult? Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
  }) {
    return connecting?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceBlocStateAvailable value) available,
    required TResult Function(DeviceBlocStateConnecting value) connecting,
    required TResult Function(DeviceBlocStateConnected value) connected,
    required TResult Function(DeviceBlocStateDisconnecting value) disconnecting,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeviceBlocStateAvailable value)? available,
    TResult? Function(DeviceBlocStateConnecting value)? connecting,
    TResult? Function(DeviceBlocStateConnected value)? connected,
    TResult? Function(DeviceBlocStateDisconnecting value)? disconnecting,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceBlocStateAvailable value)? available,
    TResult Function(DeviceBlocStateConnecting value)? connecting,
    TResult Function(DeviceBlocStateConnected value)? connected,
    TResult Function(DeviceBlocStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class DeviceBlocStateConnecting extends DeviceState {
  const factory DeviceBlocStateConnecting(
          {required final lt.BaseShadowBluetoothDevice device}) =
      _$DeviceBlocStateConnecting;
  const DeviceBlocStateConnecting._() : super._();

  lt.BaseShadowBluetoothDevice get device;
  @JsonKey(ignore: true)
  _$$DeviceBlocStateConnectingCopyWith<_$DeviceBlocStateConnecting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceBlocStateConnectedCopyWith<$Res> {
  factory _$$DeviceBlocStateConnectedCopyWith(_$DeviceBlocStateConnected value,
          $Res Function(_$DeviceBlocStateConnected) then) =
      __$$DeviceBlocStateConnectedCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectedDeviceBloc connectedDeviceBloc});
}

/// @nodoc
class __$$DeviceBlocStateConnectedCopyWithImpl<$Res>
    extends _$DeviceStateCopyWithImpl<$Res, _$DeviceBlocStateConnected>
    implements _$$DeviceBlocStateConnectedCopyWith<$Res> {
  __$$DeviceBlocStateConnectedCopyWithImpl(_$DeviceBlocStateConnected _value,
      $Res Function(_$DeviceBlocStateConnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectedDeviceBloc = null,
  }) {
    return _then(_$DeviceBlocStateConnected(
      connectedDeviceBloc: null == connectedDeviceBloc
          ? _value.connectedDeviceBloc
          : connectedDeviceBloc // ignore: cast_nullable_to_non_nullable
              as ConnectedDeviceBloc,
    ));
  }
}

/// @nodoc

class _$DeviceBlocStateConnected extends DeviceBlocStateConnected {
  const _$DeviceBlocStateConnected({required this.connectedDeviceBloc})
      : super._();

  @override
  final ConnectedDeviceBloc connectedDeviceBloc;

  @override
  String toString() {
    return 'DeviceState.connected(connectedDeviceBloc: $connectedDeviceBloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceBlocStateConnected &&
            (identical(other.connectedDeviceBloc, connectedDeviceBloc) ||
                other.connectedDeviceBloc == connectedDeviceBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectedDeviceBloc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceBlocStateConnectedCopyWith<_$DeviceBlocStateConnected>
      get copyWith =>
          __$$DeviceBlocStateConnectedCopyWithImpl<_$DeviceBlocStateConnected>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(lt.BaseShadowBluetoothDevice device) available,
    required TResult Function(lt.BaseShadowBluetoothDevice device) connecting,
    required TResult Function(ConnectedDeviceBloc connectedDeviceBloc)
        connected,
    required TResult Function(lt.BaseShadowBluetoothDevice device)
        disconnecting,
  }) {
    return connected(connectedDeviceBloc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult? Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
  }) {
    return connected?.call(connectedDeviceBloc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(connectedDeviceBloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceBlocStateAvailable value) available,
    required TResult Function(DeviceBlocStateConnecting value) connecting,
    required TResult Function(DeviceBlocStateConnected value) connected,
    required TResult Function(DeviceBlocStateDisconnecting value) disconnecting,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeviceBlocStateAvailable value)? available,
    TResult? Function(DeviceBlocStateConnecting value)? connecting,
    TResult? Function(DeviceBlocStateConnected value)? connected,
    TResult? Function(DeviceBlocStateDisconnecting value)? disconnecting,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceBlocStateAvailable value)? available,
    TResult Function(DeviceBlocStateConnecting value)? connecting,
    TResult Function(DeviceBlocStateConnected value)? connected,
    TResult Function(DeviceBlocStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class DeviceBlocStateConnected extends DeviceState {
  const factory DeviceBlocStateConnected(
          {required final ConnectedDeviceBloc connectedDeviceBloc}) =
      _$DeviceBlocStateConnected;
  const DeviceBlocStateConnected._() : super._();

  ConnectedDeviceBloc get connectedDeviceBloc;
  @JsonKey(ignore: true)
  _$$DeviceBlocStateConnectedCopyWith<_$DeviceBlocStateConnected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceBlocStateDisconnectingCopyWith<$Res> {
  factory _$$DeviceBlocStateDisconnectingCopyWith(
          _$DeviceBlocStateDisconnecting value,
          $Res Function(_$DeviceBlocStateDisconnecting) then) =
      __$$DeviceBlocStateDisconnectingCopyWithImpl<$Res>;
  @useResult
  $Res call({lt.BaseShadowBluetoothDevice device});
}

/// @nodoc
class __$$DeviceBlocStateDisconnectingCopyWithImpl<$Res>
    extends _$DeviceStateCopyWithImpl<$Res, _$DeviceBlocStateDisconnecting>
    implements _$$DeviceBlocStateDisconnectingCopyWith<$Res> {
  __$$DeviceBlocStateDisconnectingCopyWithImpl(
      _$DeviceBlocStateDisconnecting _value,
      $Res Function(_$DeviceBlocStateDisconnecting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$DeviceBlocStateDisconnecting(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as lt.BaseShadowBluetoothDevice,
    ));
  }
}

/// @nodoc

class _$DeviceBlocStateDisconnecting extends DeviceBlocStateDisconnecting {
  const _$DeviceBlocStateDisconnecting({required this.device}) : super._();

  @override
  final lt.BaseShadowBluetoothDevice device;

  @override
  String toString() {
    return 'DeviceState.disconnecting(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceBlocStateDisconnecting &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceBlocStateDisconnectingCopyWith<_$DeviceBlocStateDisconnecting>
      get copyWith => __$$DeviceBlocStateDisconnectingCopyWithImpl<
          _$DeviceBlocStateDisconnecting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(lt.BaseShadowBluetoothDevice device) available,
    required TResult Function(lt.BaseShadowBluetoothDevice device) connecting,
    required TResult Function(ConnectedDeviceBloc connectedDeviceBloc)
        connected,
    required TResult Function(lt.BaseShadowBluetoothDevice device)
        disconnecting,
  }) {
    return disconnecting(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult? Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult? Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
  }) {
    return disconnecting?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(lt.BaseShadowBluetoothDevice device)? available,
    TResult Function(lt.BaseShadowBluetoothDevice device)? connecting,
    TResult Function(ConnectedDeviceBloc connectedDeviceBloc)? connected,
    TResult Function(lt.BaseShadowBluetoothDevice device)? disconnecting,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceBlocStateAvailable value) available,
    required TResult Function(DeviceBlocStateConnecting value) connecting,
    required TResult Function(DeviceBlocStateConnected value) connected,
    required TResult Function(DeviceBlocStateDisconnecting value) disconnecting,
  }) {
    return disconnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeviceBlocStateAvailable value)? available,
    TResult? Function(DeviceBlocStateConnecting value)? connecting,
    TResult? Function(DeviceBlocStateConnected value)? connected,
    TResult? Function(DeviceBlocStateDisconnecting value)? disconnecting,
  }) {
    return disconnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceBlocStateAvailable value)? available,
    TResult Function(DeviceBlocStateConnecting value)? connecting,
    TResult Function(DeviceBlocStateConnected value)? connected,
    TResult Function(DeviceBlocStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting(this);
    }
    return orElse();
  }
}

abstract class DeviceBlocStateDisconnecting extends DeviceState {
  const factory DeviceBlocStateDisconnecting(
          {required final lt.BaseShadowBluetoothDevice device}) =
      _$DeviceBlocStateDisconnecting;
  const DeviceBlocStateDisconnecting._() : super._();

  lt.BaseShadowBluetoothDevice get device;
  @JsonKey(ignore: true)
  _$$DeviceBlocStateDisconnectingCopyWith<_$DeviceBlocStateDisconnecting>
      get copyWith => throw _privateConstructorUsedError;
}
