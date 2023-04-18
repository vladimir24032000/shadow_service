// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: json['email'] as String,
      uid: json['uid'] as String,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => $enumDecode(_$UserPermissionEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'uid': instance.uid,
      'permissions':
          instance.permissions.map((e) => _$UserPermissionEnumMap[e]!).toList(),
    };

const _$UserPermissionEnumMap = {
  UserPermission.accelGyro: 'accelGyro',
  UserPermission.advancedGaitAnalysis: 'advancedGaitAnalysis',
  UserPermission.audioMode: 'audioMode',
  UserPermission.barChart: 'barChart',
  UserPermission.basicGaitAnalysis: 'basicGaitAnalysis',
  UserPermission.connectMoreSensors: 'connectMoreSensors',
  UserPermission.developerMode: 'developerMode',
  UserPermission.exportASCII: 'exportASCII',
  UserPermission.loadServer: 'loadServer',
  UserPermission.testFunction: 'testFunction',
  UserPermission.videoMode: 'videoMode',
};
