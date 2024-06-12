import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'user_role.freezed.dart';
part 'user_role.g.dart';

@freezed
class UserRole with _$UserRole {
  factory UserRole({
    int? id,
    int? userId,
    int? rolesId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    Role? role,
  }) = _UserRole;

  factory UserRole.fromJson(Map<String, dynamic> json) =>
      _$UserRoleFromJson(json);
}
