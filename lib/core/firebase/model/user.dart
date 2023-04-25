import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class ShadowUser with _$ShadowUser {
  const factory ShadowUser({
    required String name,
    required String post,
    required String cityCountry,
    required String address,
    required String company,
    required bool enabled,
  }) = _ShadowUser;

  factory ShadowUser.fromJson(Map<String, dynamic> json) =>
      _$ShadowUserFromJson(json);
}
