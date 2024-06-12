import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_role.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    int? id,
    String? name,
    @JsonKey(name: 'service_number') String? serviceNumber,
    String? password,
    @JsonKey(name: 'onetime_password') String? onetimePassword,
    String? socketId,
    @JsonKey(name: 'profile_pic') dynamic profilePic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    dynamic caseFileOfficersId,
    @JsonKey(name: 'UserRoles') List<UserRole>? userRoles,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
