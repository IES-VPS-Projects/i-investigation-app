import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    int? id,
    String? name,
    @JsonKey(name: 'service_number') String? serviceNumber,
    dynamic password,
    @JsonKey(name: 'onetime_password') String? onetimePassword,
    @JsonKey(name: 'profile_pic') dynamic profilePic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    dynamic caseFileOfficersId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
