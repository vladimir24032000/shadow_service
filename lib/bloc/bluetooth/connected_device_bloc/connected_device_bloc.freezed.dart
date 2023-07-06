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
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
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
abstract class _$$_GetBootloaderVersionCopyWith<$Res> {
  factory _$$_GetBootloaderVersionCopyWith(_$_GetBootloaderVersion value,
          $Res Function(_$_GetBootloaderVersion) then) =
      __$$_GetBootloaderVersionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetBootloaderVersionCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_GetBootloaderVersion>
    implements _$$_GetBootloaderVersionCopyWith<$Res> {
  __$$_GetBootloaderVersionCopyWithImpl(_$_GetBootloaderVersion _value,
      $Res Function(_$_GetBootloaderVersion) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetBootloaderVersion
    with DiagnosticableTreeMixin
    implements _GetBootloaderVersion {
  const _$_GetBootloaderVersion();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.getBootloaderVersion()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ConnectedDeviceEvent.getBootloaderVersion'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetBootloaderVersion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return getBootloaderVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return getBootloaderVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (getBootloaderVersion != null) {
      return getBootloaderVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return getBootloaderVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return getBootloaderVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (getBootloaderVersion != null) {
      return getBootloaderVersion(this);
    }
    return orElse();
  }
}

abstract class _GetBootloaderVersion implements ConnectedDeviceEvent {
  const factory _GetBootloaderVersion() = _$_GetBootloaderVersion;
}

/// @nodoc
abstract class _$$_GetFrimwareNameCopyWith<$Res> {
  factory _$$_GetFrimwareNameCopyWith(
          _$_GetFrimwareName value, $Res Function(_$_GetFrimwareName) then) =
      __$$_GetFrimwareNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetFrimwareNameCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_GetFrimwareName>
    implements _$$_GetFrimwareNameCopyWith<$Res> {
  __$$_GetFrimwareNameCopyWithImpl(
      _$_GetFrimwareName _value, $Res Function(_$_GetFrimwareName) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetFrimwareName
    with DiagnosticableTreeMixin
    implements _GetFrimwareName {
  const _$_GetFrimwareName();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.getFrimwareName()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ConnectedDeviceEvent.getFrimwareName'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetFrimwareName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return getFrimwareName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return getFrimwareName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (getFrimwareName != null) {
      return getFrimwareName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return getFrimwareName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return getFrimwareName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (getFrimwareName != null) {
      return getFrimwareName(this);
    }
    return orElse();
  }
}

abstract class _GetFrimwareName implements ConnectedDeviceEvent {
  const factory _GetFrimwareName() = _$_GetFrimwareName;
}

/// @nodoc
abstract class _$$_RewritePinCopyWith<$Res> {
  factory _$$_RewritePinCopyWith(
          _$_RewritePin value, $Res Function(_$_RewritePin) then) =
      __$$_RewritePinCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RewritePinCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_RewritePin>
    implements _$$_RewritePinCopyWith<$Res> {
  __$$_RewritePinCopyWithImpl(
      _$_RewritePin _value, $Res Function(_$_RewritePin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RewritePin with DiagnosticableTreeMixin implements _RewritePin {
  const _$_RewritePin();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.rewritePin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectedDeviceEvent.rewritePin'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RewritePin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return rewritePin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return rewritePin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (rewritePin != null) {
      return rewritePin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return rewritePin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return rewritePin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (rewritePin != null) {
      return rewritePin(this);
    }
    return orElse();
  }
}

abstract class _RewritePin implements ConnectedDeviceEvent {
  const factory _RewritePin() = _$_RewritePin;
}

/// @nodoc
abstract class _$$_SendConnectRequestCopyWith<$Res> {
  factory _$$_SendConnectRequestCopyWith(_$_SendConnectRequest value,
          $Res Function(_$_SendConnectRequest) then) =
      __$$_SendConnectRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendConnectRequestCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_SendConnectRequest>
    implements _$$_SendConnectRequestCopyWith<$Res> {
  __$$_SendConnectRequestCopyWithImpl(
      _$_SendConnectRequest _value, $Res Function(_$_SendConnectRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendConnectRequest
    with DiagnosticableTreeMixin
    implements _SendConnectRequest {
  const _$_SendConnectRequest();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.sendConnectRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ConnectedDeviceEvent.sendConnectRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendConnectRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return sendConnectRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return sendConnectRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (sendConnectRequest != null) {
      return sendConnectRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return sendConnectRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return sendConnectRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (sendConnectRequest != null) {
      return sendConnectRequest(this);
    }
    return orElse();
  }
}

abstract class _SendConnectRequest implements ConnectedDeviceEvent {
  const factory _SendConnectRequest() = _$_SendConnectRequest;
}

/// @nodoc
abstract class _$$_SetConfigCopyWith<$Res> {
  factory _$$_SetConfigCopyWith(
          _$_SetConfig value, $Res Function(_$_SetConfig) then) =
      __$$_SetConfigCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetConfigCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_SetConfig>
    implements _$$_SetConfigCopyWith<$Res> {
  __$$_SetConfigCopyWithImpl(
      _$_SetConfig _value, $Res Function(_$_SetConfig) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetConfig with DiagnosticableTreeMixin implements _SetConfig {
  const _$_SetConfig();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.setConfig()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectedDeviceEvent.setConfig'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetConfig);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return setConfig();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return setConfig?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (setConfig != null) {
      return setConfig();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return setConfig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return setConfig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (setConfig != null) {
      return setConfig(this);
    }
    return orElse();
  }
}

abstract class _SetConfig implements ConnectedDeviceEvent {
  const factory _SetConfig() = _$_SetConfig;
}

/// @nodoc
abstract class _$$_SetPinCopyWith<$Res> {
  factory _$$_SetPinCopyWith(_$_SetPin value, $Res Function(_$_SetPin) then) =
      __$$_SetPinCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetPinCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_SetPin>
    implements _$$_SetPinCopyWith<$Res> {
  __$$_SetPinCopyWithImpl(_$_SetPin _value, $Res Function(_$_SetPin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetPin with DiagnosticableTreeMixin implements _SetPin {
  const _$_SetPin();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.setPin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ConnectedDeviceEvent.setPin'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetPin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return setPin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return setPin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (setPin != null) {
      return setPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return setPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return setPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (setPin != null) {
      return setPin(this);
    }
    return orElse();
  }
}

abstract class _SetPin implements ConnectedDeviceEvent {
  const factory _SetPin() = _$_SetPin;
}

/// @nodoc
abstract class _$$_SetSecretCodeCopyWith<$Res> {
  factory _$$_SetSecretCodeCopyWith(
          _$_SetSecretCode value, $Res Function(_$_SetSecretCode) then) =
      __$$_SetSecretCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetSecretCodeCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_SetSecretCode>
    implements _$$_SetSecretCodeCopyWith<$Res> {
  __$$_SetSecretCodeCopyWithImpl(
      _$_SetSecretCode _value, $Res Function(_$_SetSecretCode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetSecretCode with DiagnosticableTreeMixin implements _SetSecretCode {
  const _$_SetSecretCode();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.setSecretCode()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectedDeviceEvent.setSecretCode'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetSecretCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return setSecretCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return setSecretCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (setSecretCode != null) {
      return setSecretCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return setSecretCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return setSecretCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (setSecretCode != null) {
      return setSecretCode(this);
    }
    return orElse();
  }
}

abstract class _SetSecretCode implements ConnectedDeviceEvent {
  const factory _SetSecretCode() = _$_SetSecretCode;
}

/// @nodoc
abstract class _$$_SetSerialNumberCopyWith<$Res> {
  factory _$$_SetSerialNumberCopyWith(
          _$_SetSerialNumber value, $Res Function(_$_SetSerialNumber) then) =
      __$$_SetSerialNumberCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetSerialNumberCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_SetSerialNumber>
    implements _$$_SetSerialNumberCopyWith<$Res> {
  __$$_SetSerialNumberCopyWithImpl(
      _$_SetSerialNumber _value, $Res Function(_$_SetSerialNumber) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetSerialNumber
    with DiagnosticableTreeMixin
    implements _SetSerialNumber {
  const _$_SetSerialNumber();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.setSerialNumber()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ConnectedDeviceEvent.setSerialNumber'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetSerialNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return setSerialNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return setSerialNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (setSerialNumber != null) {
      return setSerialNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return setSerialNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return setSerialNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (setSerialNumber != null) {
      return setSerialNumber(this);
    }
    return orElse();
  }
}

abstract class _SetSerialNumber implements ConnectedDeviceEvent {
  const factory _SetSerialNumber() = _$_SetSerialNumber;
}

/// @nodoc
abstract class _$$_TestCommandCopyWith<$Res> {
  factory _$$_TestCommandCopyWith(
          _$_TestCommand value, $Res Function(_$_TestCommand) then) =
      __$$_TestCommandCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TestCommandCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_TestCommand>
    implements _$$_TestCommandCopyWith<$Res> {
  __$$_TestCommandCopyWithImpl(
      _$_TestCommand _value, $Res Function(_$_TestCommand) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TestCommand with DiagnosticableTreeMixin implements _TestCommand {
  const _$_TestCommand();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.testCommand()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectedDeviceEvent.testCommand'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TestCommand);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return testCommand();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return testCommand?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (testCommand != null) {
      return testCommand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return testCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return testCommand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (testCommand != null) {
      return testCommand(this);
    }
    return orElse();
  }
}

abstract class _TestCommand implements ConnectedDeviceEvent {
  const factory _TestCommand() = _$_TestCommand;
}

/// @nodoc
abstract class _$$_FirmwareVersionRequestCopyWith<$Res> {
  factory _$$_FirmwareVersionRequestCopyWith(_$_FirmwareVersionRequest value,
          $Res Function(_$_FirmwareVersionRequest) then) =
      __$$_FirmwareVersionRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FirmwareVersionRequestCopyWithImpl<$Res>
    extends _$ConnectedDeviceEventCopyWithImpl<$Res, _$_FirmwareVersionRequest>
    implements _$$_FirmwareVersionRequestCopyWith<$Res> {
  __$$_FirmwareVersionRequestCopyWithImpl(_$_FirmwareVersionRequest _value,
      $Res Function(_$_FirmwareVersionRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FirmwareVersionRequest
    with DiagnosticableTreeMixin
    implements _FirmwareVersionRequest {
  const _$_FirmwareVersionRequest();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectedDeviceEvent.firmwareVersionRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ConnectedDeviceEvent.firmwareVersionRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirmwareVersionRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBootloaderVersion,
    required TResult Function() getFrimwareName,
    required TResult Function() rewritePin,
    required TResult Function() sendConnectRequest,
    required TResult Function() setConfig,
    required TResult Function() setPin,
    required TResult Function() setSecretCode,
    required TResult Function() setSerialNumber,
    required TResult Function() testCommand,
    required TResult Function() firmwareVersionRequest,
  }) {
    return firmwareVersionRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBootloaderVersion,
    TResult? Function()? getFrimwareName,
    TResult? Function()? rewritePin,
    TResult? Function()? sendConnectRequest,
    TResult? Function()? setConfig,
    TResult? Function()? setPin,
    TResult? Function()? setSecretCode,
    TResult? Function()? setSerialNumber,
    TResult? Function()? testCommand,
    TResult? Function()? firmwareVersionRequest,
  }) {
    return firmwareVersionRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBootloaderVersion,
    TResult Function()? getFrimwareName,
    TResult Function()? rewritePin,
    TResult Function()? sendConnectRequest,
    TResult Function()? setConfig,
    TResult Function()? setPin,
    TResult Function()? setSecretCode,
    TResult Function()? setSerialNumber,
    TResult Function()? testCommand,
    TResult Function()? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (firmwareVersionRequest != null) {
      return firmwareVersionRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBootloaderVersion value) getBootloaderVersion,
    required TResult Function(_GetFrimwareName value) getFrimwareName,
    required TResult Function(_RewritePin value) rewritePin,
    required TResult Function(_SendConnectRequest value) sendConnectRequest,
    required TResult Function(_SetConfig value) setConfig,
    required TResult Function(_SetPin value) setPin,
    required TResult Function(_SetSecretCode value) setSecretCode,
    required TResult Function(_SetSerialNumber value) setSerialNumber,
    required TResult Function(_TestCommand value) testCommand,
    required TResult Function(_FirmwareVersionRequest value)
        firmwareVersionRequest,
  }) {
    return firmwareVersionRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult? Function(_GetFrimwareName value)? getFrimwareName,
    TResult? Function(_RewritePin value)? rewritePin,
    TResult? Function(_SendConnectRequest value)? sendConnectRequest,
    TResult? Function(_SetConfig value)? setConfig,
    TResult? Function(_SetPin value)? setPin,
    TResult? Function(_SetSecretCode value)? setSecretCode,
    TResult? Function(_SetSerialNumber value)? setSerialNumber,
    TResult? Function(_TestCommand value)? testCommand,
    TResult? Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
  }) {
    return firmwareVersionRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBootloaderVersion value)? getBootloaderVersion,
    TResult Function(_GetFrimwareName value)? getFrimwareName,
    TResult Function(_RewritePin value)? rewritePin,
    TResult Function(_SendConnectRequest value)? sendConnectRequest,
    TResult Function(_SetConfig value)? setConfig,
    TResult Function(_SetPin value)? setPin,
    TResult Function(_SetSecretCode value)? setSecretCode,
    TResult Function(_SetSerialNumber value)? setSerialNumber,
    TResult Function(_TestCommand value)? testCommand,
    TResult Function(_FirmwareVersionRequest value)? firmwareVersionRequest,
    required TResult orElse(),
  }) {
    if (firmwareVersionRequest != null) {
      return firmwareVersionRequest(this);
    }
    return orElse();
  }
}

abstract class _FirmwareVersionRequest implements ConnectedDeviceEvent {
  const factory _FirmwareVersionRequest() = _$_FirmwareVersionRequest;
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
