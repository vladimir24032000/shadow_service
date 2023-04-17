// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BTConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BTConnectionEventCopyWith<$Res> {
  factory $BTConnectionEventCopyWith(
          BTConnectionEvent value, $Res Function(BTConnectionEvent) then) =
      _$BTConnectionEventCopyWithImpl<$Res, BTConnectionEvent>;
}

/// @nodoc
class _$BTConnectionEventCopyWithImpl<$Res, $Val extends BTConnectionEvent>
    implements $BTConnectionEventCopyWith<$Res> {
  _$BTConnectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetDevicesCopyWith<$Res> {
  factory _$$_SetDevicesCopyWith(
          _$_SetDevices value, $Res Function(_$_SetDevices) then) =
      __$$_SetDevicesCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DeviceIdentifier, DeviceBloc> devices});
}

/// @nodoc
class __$$_SetDevicesCopyWithImpl<$Res>
    extends _$BTConnectionEventCopyWithImpl<$Res, _$_SetDevices>
    implements _$$_SetDevicesCopyWith<$Res> {
  __$$_SetDevicesCopyWithImpl(
      _$_SetDevices _value, $Res Function(_$_SetDevices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
  }) {
    return _then(_$_SetDevices(
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as Map<DeviceIdentifier, DeviceBloc>,
    ));
  }
}

/// @nodoc

class _$_SetDevices with DiagnosticableTreeMixin implements _SetDevices {
  const _$_SetDevices(
      {required final Map<DeviceIdentifier, DeviceBloc> devices})
      : _devices = devices;

  final Map<DeviceIdentifier, DeviceBloc> _devices;
  @override
  Map<DeviceIdentifier, DeviceBloc> get devices {
    if (_devices is EqualUnmodifiableMapView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_devices);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionEvent.setDevices(devices: $devices)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BTConnectionEvent.setDevices'))
      ..add(DiagnosticsProperty('devices', devices));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetDevices &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetDevicesCopyWith<_$_SetDevices> get copyWith =>
      __$$_SetDevicesCopyWithImpl<_$_SetDevices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) {
    return setDevices(devices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) {
    return setDevices?.call(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
    required TResult orElse(),
  }) {
    if (setDevices != null) {
      return setDevices(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) {
    return setDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) {
    return setDevices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) {
    if (setDevices != null) {
      return setDevices(this);
    }
    return orElse();
  }
}

abstract class _SetDevices implements BTConnectionEvent {
  const factory _SetDevices(
          {required final Map<DeviceIdentifier, DeviceBloc> devices}) =
      _$_SetDevices;

  Map<DeviceIdentifier, DeviceBloc> get devices;
  @JsonKey(ignore: true)
  _$$_SetDevicesCopyWith<_$_SetDevices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddDevicesCopyWith<$Res> {
  factory _$$_AddDevicesCopyWith(
          _$_AddDevices value, $Res Function(_$_AddDevices) then) =
      __$$_AddDevicesCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DeviceIdentifier, DeviceBloc> devices});
}

/// @nodoc
class __$$_AddDevicesCopyWithImpl<$Res>
    extends _$BTConnectionEventCopyWithImpl<$Res, _$_AddDevices>
    implements _$$_AddDevicesCopyWith<$Res> {
  __$$_AddDevicesCopyWithImpl(
      _$_AddDevices _value, $Res Function(_$_AddDevices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
  }) {
    return _then(_$_AddDevices(
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as Map<DeviceIdentifier, DeviceBloc>,
    ));
  }
}

/// @nodoc

class _$_AddDevices with DiagnosticableTreeMixin implements _AddDevices {
  const _$_AddDevices(
      {required final Map<DeviceIdentifier, DeviceBloc> devices})
      : _devices = devices;

  final Map<DeviceIdentifier, DeviceBloc> _devices;
  @override
  Map<DeviceIdentifier, DeviceBloc> get devices {
    if (_devices is EqualUnmodifiableMapView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_devices);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionEvent.addDevices(devices: $devices)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BTConnectionEvent.addDevices'))
      ..add(DiagnosticsProperty('devices', devices));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDevices &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDevicesCopyWith<_$_AddDevices> get copyWith =>
      __$$_AddDevicesCopyWithImpl<_$_AddDevices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) {
    return addDevices(devices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) {
    return addDevices?.call(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
    required TResult orElse(),
  }) {
    if (addDevices != null) {
      return addDevices(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) {
    return addDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) {
    return addDevices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) {
    if (addDevices != null) {
      return addDevices(this);
    }
    return orElse();
  }
}

abstract class _AddDevices implements BTConnectionEvent {
  const factory _AddDevices(
          {required final Map<DeviceIdentifier, DeviceBloc> devices}) =
      _$_AddDevices;

  Map<DeviceIdentifier, DeviceBloc> get devices;
  @JsonKey(ignore: true)
  _$$_AddDevicesCopyWith<_$_AddDevices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveDevicesCopyWith<$Res> {
  factory _$$_RemoveDevicesCopyWith(
          _$_RemoveDevices value, $Res Function(_$_RemoveDevices) then) =
      __$$_RemoveDevicesCopyWithImpl<$Res>;
  @useResult
  $Res call({Iterable<DeviceIdentifier> deviceIds});
}

/// @nodoc
class __$$_RemoveDevicesCopyWithImpl<$Res>
    extends _$BTConnectionEventCopyWithImpl<$Res, _$_RemoveDevices>
    implements _$$_RemoveDevicesCopyWith<$Res> {
  __$$_RemoveDevicesCopyWithImpl(
      _$_RemoveDevices _value, $Res Function(_$_RemoveDevices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceIds = null,
  }) {
    return _then(_$_RemoveDevices(
      deviceIds: null == deviceIds
          ? _value.deviceIds
          : deviceIds // ignore: cast_nullable_to_non_nullable
              as Iterable<DeviceIdentifier>,
    ));
  }
}

/// @nodoc

class _$_RemoveDevices with DiagnosticableTreeMixin implements _RemoveDevices {
  const _$_RemoveDevices({required this.deviceIds});

  @override
  final Iterable<DeviceIdentifier> deviceIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionEvent.removeDevices(deviceIds: $deviceIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BTConnectionEvent.removeDevices'))
      ..add(DiagnosticsProperty('deviceIds', deviceIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveDevices &&
            const DeepCollectionEquality().equals(other.deviceIds, deviceIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deviceIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveDevicesCopyWith<_$_RemoveDevices> get copyWith =>
      __$$_RemoveDevicesCopyWithImpl<_$_RemoveDevices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) {
    return removeDevices(deviceIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) {
    return removeDevices?.call(deviceIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
    required TResult orElse(),
  }) {
    if (removeDevices != null) {
      return removeDevices(deviceIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) {
    return removeDevices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) {
    return removeDevices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) {
    if (removeDevices != null) {
      return removeDevices(this);
    }
    return orElse();
  }
}

abstract class _RemoveDevices implements BTConnectionEvent {
  const factory _RemoveDevices(
      {required final Iterable<DeviceIdentifier> deviceIds}) = _$_RemoveDevices;

  Iterable<DeviceIdentifier> get deviceIds;
  @JsonKey(ignore: true)
  _$$_RemoveDevicesCopyWith<_$_RemoveDevices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$BTConnectionEventCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error(this.error);

  @override
  final Object? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionEvent.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BTConnectionEvent.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
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
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BTConnectionEvent {
  const factory _Error(final Object? error) = _$_Error;

  Object? get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$BTConnectionEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset with DiagnosticableTreeMixin implements _Reset {
  const _$_Reset();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BTConnectionEvent.reset'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements BTConnectionEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_StartScanCopyWith<$Res> {
  factory _$$_StartScanCopyWith(
          _$_StartScan value, $Res Function(_$_StartScan) then) =
      __$$_StartScanCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration timeout});
}

/// @nodoc
class __$$_StartScanCopyWithImpl<$Res>
    extends _$BTConnectionEventCopyWithImpl<$Res, _$_StartScan>
    implements _$$_StartScanCopyWith<$Res> {
  __$$_StartScanCopyWithImpl(
      _$_StartScan _value, $Res Function(_$_StartScan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeout = null,
  }) {
    return _then(_$_StartScan(
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_StartScan with DiagnosticableTreeMixin implements _StartScan {
  const _$_StartScan({this.timeout = const Duration(seconds: 10)});

  @override
  @JsonKey()
  final Duration timeout;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionEvent.startScan(timeout: $timeout)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BTConnectionEvent.startScan'))
      ..add(DiagnosticsProperty('timeout', timeout));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartScan &&
            (identical(other.timeout, timeout) || other.timeout == timeout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartScanCopyWith<_$_StartScan> get copyWith =>
      __$$_StartScanCopyWithImpl<_$_StartScan>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) {
    return startScan(timeout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) {
    return startScan?.call(timeout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
    required TResult orElse(),
  }) {
    if (startScan != null) {
      return startScan(timeout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) {
    return startScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) {
    return startScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) {
    if (startScan != null) {
      return startScan(this);
    }
    return orElse();
  }
}

abstract class _StartScan implements BTConnectionEvent {
  const factory _StartScan({final Duration timeout}) = _$_StartScan;

  Duration get timeout;
  @JsonKey(ignore: true)
  _$$_StartScanCopyWith<_$_StartScan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StopScanCopyWith<$Res> {
  factory _$$_StopScanCopyWith(
          _$_StopScan value, $Res Function(_$_StopScan) then) =
      __$$_StopScanCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StopScanCopyWithImpl<$Res>
    extends _$BTConnectionEventCopyWithImpl<$Res, _$_StopScan>
    implements _$$_StopScanCopyWith<$Res> {
  __$$_StopScanCopyWithImpl(
      _$_StopScan _value, $Res Function(_$_StopScan) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StopScan with DiagnosticableTreeMixin implements _StopScan {
  const _$_StopScan();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionEvent.stopScan()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BTConnectionEvent.stopScan'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StopScan);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) {
    return stopScan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) {
    return stopScan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
    required TResult orElse(),
  }) {
    if (stopScan != null) {
      return stopScan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) {
    return stopScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) {
    return stopScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) {
    if (stopScan != null) {
      return stopScan(this);
    }
    return orElse();
  }
}

abstract class _StopScan implements BTConnectionEvent {
  const factory _StopScan() = _$_StopScan;
}

/// @nodoc
abstract class _$$_SetIsScanningCopyWith<$Res> {
  factory _$$_SetIsScanningCopyWith(
          _$_SetIsScanning value, $Res Function(_$_SetIsScanning) then) =
      __$$_SetIsScanningCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isScanning});
}

/// @nodoc
class __$$_SetIsScanningCopyWithImpl<$Res>
    extends _$BTConnectionEventCopyWithImpl<$Res, _$_SetIsScanning>
    implements _$$_SetIsScanningCopyWith<$Res> {
  __$$_SetIsScanningCopyWithImpl(
      _$_SetIsScanning _value, $Res Function(_$_SetIsScanning) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScanning = null,
  }) {
    return _then(_$_SetIsScanning(
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetIsScanning with DiagnosticableTreeMixin implements _SetIsScanning {
  const _$_SetIsScanning({required this.isScanning});

  @override
  final bool isScanning;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionEvent.setIsScanning(isScanning: $isScanning)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BTConnectionEvent.setIsScanning'))
      ..add(DiagnosticsProperty('isScanning', isScanning));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetIsScanning &&
            (identical(other.isScanning, isScanning) ||
                other.isScanning == isScanning));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isScanning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetIsScanningCopyWith<_$_SetIsScanning> get copyWith =>
      __$$_SetIsScanningCopyWithImpl<_$_SetIsScanning>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) {
    return setIsScanning(isScanning);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) {
    return setIsScanning?.call(isScanning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
    required TResult orElse(),
  }) {
    if (setIsScanning != null) {
      return setIsScanning(isScanning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) {
    return setIsScanning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) {
    return setIsScanning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) {
    if (setIsScanning != null) {
      return setIsScanning(this);
    }
    return orElse();
  }
}

abstract class _SetIsScanning implements BTConnectionEvent {
  const factory _SetIsScanning({required final bool isScanning}) =
      _$_SetIsScanning;

  bool get isScanning;
  @JsonKey(ignore: true)
  _$$_SetIsScanningCopyWith<_$_SetIsScanning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetResettedCopyWith<$Res> {
  factory _$$_SetResettedCopyWith(
          _$_SetResetted value, $Res Function(_$_SetResetted) then) =
      __$$_SetResettedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetResettedCopyWithImpl<$Res>
    extends _$BTConnectionEventCopyWithImpl<$Res, _$_SetResetted>
    implements _$$_SetResettedCopyWith<$Res> {
  __$$_SetResettedCopyWithImpl(
      _$_SetResetted _value, $Res Function(_$_SetResetted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetResetted with DiagnosticableTreeMixin implements _SetResetted {
  const _$_SetResetted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionEvent.setResetted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'BTConnectionEvent.setResetted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetResetted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        setDevices,
    required TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)
        addDevices,
    required TResult Function(Iterable<DeviceIdentifier> deviceIds)
        removeDevices,
    required TResult Function(Object? error) error,
    required TResult Function() reset,
    required TResult Function(Duration timeout) startScan,
    required TResult Function() stopScan,
    required TResult Function(bool isScanning) setIsScanning,
    required TResult Function() setResetted,
  }) {
    return setResetted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult? Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult? Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult? Function(Object? error)? error,
    TResult? Function()? reset,
    TResult? Function(Duration timeout)? startScan,
    TResult? Function()? stopScan,
    TResult? Function(bool isScanning)? setIsScanning,
    TResult? Function()? setResetted,
  }) {
    return setResetted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? setDevices,
    TResult Function(Map<DeviceIdentifier, DeviceBloc> devices)? addDevices,
    TResult Function(Iterable<DeviceIdentifier> deviceIds)? removeDevices,
    TResult Function(Object? error)? error,
    TResult Function()? reset,
    TResult Function(Duration timeout)? startScan,
    TResult Function()? stopScan,
    TResult Function(bool isScanning)? setIsScanning,
    TResult Function()? setResetted,
    required TResult orElse(),
  }) {
    if (setResetted != null) {
      return setResetted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDevices value) setDevices,
    required TResult Function(_AddDevices value) addDevices,
    required TResult Function(_RemoveDevices value) removeDevices,
    required TResult Function(_Error value) error,
    required TResult Function(_Reset value) reset,
    required TResult Function(_StartScan value) startScan,
    required TResult Function(_StopScan value) stopScan,
    required TResult Function(_SetIsScanning value) setIsScanning,
    required TResult Function(_SetResetted value) setResetted,
  }) {
    return setResetted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDevices value)? setDevices,
    TResult? Function(_AddDevices value)? addDevices,
    TResult? Function(_RemoveDevices value)? removeDevices,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_StartScan value)? startScan,
    TResult? Function(_StopScan value)? stopScan,
    TResult? Function(_SetIsScanning value)? setIsScanning,
    TResult? Function(_SetResetted value)? setResetted,
  }) {
    return setResetted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDevices value)? setDevices,
    TResult Function(_AddDevices value)? addDevices,
    TResult Function(_RemoveDevices value)? removeDevices,
    TResult Function(_Error value)? error,
    TResult Function(_Reset value)? reset,
    TResult Function(_StartScan value)? startScan,
    TResult Function(_StopScan value)? stopScan,
    TResult Function(_SetIsScanning value)? setIsScanning,
    TResult Function(_SetResetted value)? setResetted,
    required TResult orElse(),
  }) {
    if (setResetted != null) {
      return setResetted(this);
    }
    return orElse();
  }
}

abstract class _SetResetted implements BTConnectionEvent {
  const factory _SetResetted() = _$_SetResetted;
}

/// @nodoc
mixin _$BTConnectionState {
  Map<DeviceIdentifier, DeviceBloc> get devices =>
      throw _privateConstructorUsedError;
  bool get isScanning => throw _privateConstructorUsedError;
  bool get anyDeviceConnected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BTConnectionStateCopyWith<BTConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BTConnectionStateCopyWith<$Res> {
  factory $BTConnectionStateCopyWith(
          BTConnectionState value, $Res Function(BTConnectionState) then) =
      _$BTConnectionStateCopyWithImpl<$Res, BTConnectionState>;
  @useResult
  $Res call(
      {Map<DeviceIdentifier, DeviceBloc> devices,
      bool isScanning,
      bool anyDeviceConnected});
}

/// @nodoc
class _$BTConnectionStateCopyWithImpl<$Res, $Val extends BTConnectionState>
    implements $BTConnectionStateCopyWith<$Res> {
  _$BTConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
    Object? isScanning = null,
    Object? anyDeviceConnected = null,
  }) {
    return _then(_value.copyWith(
      devices: null == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as Map<DeviceIdentifier, DeviceBloc>,
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      anyDeviceConnected: null == anyDeviceConnected
          ? _value.anyDeviceConnected
          : anyDeviceConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res>
    implements $BTConnectionStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<DeviceIdentifier, DeviceBloc> devices,
      bool isScanning,
      bool anyDeviceConnected});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$BTConnectionStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
    Object? isScanning = null,
    Object? anyDeviceConnected = null,
  }) {
    return _then(_$_State(
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as Map<DeviceIdentifier, DeviceBloc>,
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      anyDeviceConnected: null == anyDeviceConnected
          ? _value.anyDeviceConnected
          : anyDeviceConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_State with DiagnosticableTreeMixin implements _State {
  const _$_State(
      {final Map<DeviceIdentifier, DeviceBloc> devices =
          const <DeviceIdentifier, DeviceBloc>{},
      this.isScanning = false,
      this.anyDeviceConnected = false})
      : _devices = devices;

  final Map<DeviceIdentifier, DeviceBloc> _devices;
  @override
  @JsonKey()
  Map<DeviceIdentifier, DeviceBloc> get devices {
    if (_devices is EqualUnmodifiableMapView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_devices);
  }

  @override
  @JsonKey()
  final bool isScanning;
  @override
  @JsonKey()
  final bool anyDeviceConnected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BTConnectionState(devices: $devices, isScanning: $isScanning, anyDeviceConnected: $anyDeviceConnected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BTConnectionState'))
      ..add(DiagnosticsProperty('devices', devices))
      ..add(DiagnosticsProperty('isScanning', isScanning))
      ..add(DiagnosticsProperty('anyDeviceConnected', anyDeviceConnected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            (identical(other.isScanning, isScanning) ||
                other.isScanning == isScanning) &&
            (identical(other.anyDeviceConnected, anyDeviceConnected) ||
                other.anyDeviceConnected == anyDeviceConnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_devices),
      isScanning,
      anyDeviceConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);
}

abstract class _State implements BTConnectionState {
  const factory _State(
      {final Map<DeviceIdentifier, DeviceBloc> devices,
      final bool isScanning,
      final bool anyDeviceConnected}) = _$_State;

  @override
  Map<DeviceIdentifier, DeviceBloc> get devices;
  @override
  bool get isScanning;
  @override
  bool get anyDeviceConnected;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
