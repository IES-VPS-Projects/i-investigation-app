import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
class Users with _$Users {
  factory Users({
    int? id,
    String? name,
    @JsonKey(name: 'service_number') String? serviceNumber,
    String? password,
    @JsonKey(name: 'onetime_password') String? onetimePassword,
    @JsonKey(name: 'profile_pic') dynamic profilePic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}
