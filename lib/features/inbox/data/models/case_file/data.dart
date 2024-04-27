import 'package:freezed_annotation/freezed_annotation.dart';

import 'case_file_officer.dart';
import 'case_notes_suspect.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    int? id,
    bool? available,
    int? userId,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? occurenceId,
    @JsonKey(name: 'CaseFileOfficers') List<CaseFileOfficer>? caseFileOfficers,
    @JsonKey(name: 'CaseSummary') List<dynamic>? caseSummary,
    @JsonKey(name: 'CaseMaterial') List<dynamic>? caseMaterial,
    @JsonKey(name: 'CaseNotesSuspect') List<CaseNotesSuspect>? caseNotesSuspect,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
