// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      patronymic: json['patronymic'] as String?,
      job_title: json['job_title'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      installation_center_address:
          json['installation_center_address'] as String?,
      organization: json['organization'] as String?,
      phone_number: json['phone_number'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      is_verified_by_admin: json['is_verified_by_admin'] as bool,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'patronymic': instance.patronymic,
      'job_title': instance.job_title,
      'country': instance.country,
      'city': instance.city,
      'installation_center_address': instance.installation_center_address,
      'organization': instance.organization,
      'phone_number': instance.phone_number,
      'email': instance.email,
      'password': instance.password,
      'is_verified_by_admin': instance.is_verified_by_admin,
    };
