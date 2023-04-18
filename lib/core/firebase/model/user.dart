import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_permission.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String email,
    required String uid,
    required List<UserPermission> permissions,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
