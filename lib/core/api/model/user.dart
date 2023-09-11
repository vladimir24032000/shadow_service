import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String? first_name,
    required String? last_name,
    required String? patronymic,
    required String? job_title,
    required String? country,
    required String? city,
    required String? installation_center_address,
    required String? organization,
    required String? phone_number,
    required String? email,
    required String? password,
    required bool is_verified_by_admin,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
