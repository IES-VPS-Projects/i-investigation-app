import 'package:freezed_annotation/freezed_annotation.dart';

import 'case_file_officer.dart';
import 'case_material.dart';
import 'case_note.dart';
import 'case_summary.dart';
import 'internal_occurence.dart';
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
    dynamic internalOccurenceId,
    @JsonKey(name: 'CaseFileOfficers') List<CaseFileOfficer>? caseFileOfficers,
    @JsonKey(name: 'CaseMaterial') List<CaseMaterial>? caseMaterial,
    @JsonKey(name: 'CaseNotes') List<CaseNote>? caseNotes,
    @JsonKey(name: 'CaseSummary') List<CaseSummary>? caseSummary,
    LeadOfficer? leadOfficer,
    Occurence? occurence,
    InternalOccurence? internalOccurence,
  }) = _OpenCases;

  factory OpenCases.fromJson(Map<String, dynamic> json) =>
      _$OpenCasesFromJson(json);
}
