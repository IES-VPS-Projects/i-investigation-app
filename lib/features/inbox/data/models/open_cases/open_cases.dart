import 'package:freezed_annotation/freezed_annotation.dart';

import 'case_file_officer.dart';
import 'lead_officer.dart';
import 'occurence.dart';

part 'open_cases.freezed.dart';
part 'open_cases.g.dart';

@freezed
class OpenCases with _$OpenCases {
  factory OpenCases({
    int? id,
    bool? available,
    int? userId,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? occurenceId,
    @JsonKey(name: 'CaseFileOfficers') List<CaseFileOfficer>? caseFileOfficers,
    @JsonKey(name: 'CaseMaterial') List<dynamic>? caseMaterial,
    @JsonKey(name: 'CaseNotes') List<dynamic>? caseNotes,
    @JsonKey(name: 'CaseSummary') List<dynamic>? caseSummary,
    LeadOfficer? leadOfficer,
    Occurence? occurence,
  }) = _OpenCases;

  factory OpenCases.fromJson(Map<String, dynamic> json) =>
      _$OpenCasesFromJson(json);
}
