import 'package:freezed_annotation/freezed_annotation.dart';

import 'case_file_officer.dart';
import 'case_material.dart';
import 'case_note.dart';
import 'case_notes_offence.dart';
import 'case_notes_suspect.dart';
import 'case_notes_witness.dart';
import 'case_summary.dart';

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
    @JsonKey(name: 'CaseSummary') List<CaseSummary>? caseSummary,
    @JsonKey(name: 'CaseMaterial') List<CaseMaterial>? caseMaterial,
    @JsonKey(name: 'CaseNotesWitness') List<CaseNotesWitness>? caseNotesWitness,
    @JsonKey(name: 'CaseNotesSuspect') List<CaseNotesSuspect>? caseNotesSuspect,
    @JsonKey(name: 'CaseNotes') List<CaseNote>? caseNotes,
    @JsonKey(name: 'CaseNotesOffences')
    List<CaseNotesOffence>? caseNotesOffences,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
