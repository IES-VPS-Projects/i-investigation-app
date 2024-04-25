import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_officer.freezed.dart';
part 'lead_officer.g.dart';

@freezed
class LeadOfficer with _$LeadOfficer {
  factory LeadOfficer({
    int? id,
    String? name,
    @JsonKey(name: 'service_number') String? serviceNumber,
    dynamic password,
    @JsonKey(name: 'onetime_password') String? onetimePassword,
    @JsonKey(name: 'profile_pic') dynamic profilePic,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    dynamic caseFileOfficersId,
  }) = _LeadOfficer;

  factory LeadOfficer.fromJson(Map<String, dynamic> json) =>
      _$LeadOfficerFromJson(json);
}
