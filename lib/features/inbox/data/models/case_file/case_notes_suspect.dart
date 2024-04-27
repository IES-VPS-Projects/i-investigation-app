import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_notes_suspect.freezed.dart';
part 'case_notes_suspect.g.dart';

@freezed
class CaseNotesSuspect with _$CaseNotesSuspect {
  factory CaseNotesSuspect({
    int? id,
    String? picture,
    int? userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
    dynamic caseNotesId,
    int? caseFileId,
  }) = _CaseNotesSuspect;

  factory CaseNotesSuspect.fromJson(Map<String, dynamic> json) =>
      _$CaseNotesSuspectFromJson(json);
}
