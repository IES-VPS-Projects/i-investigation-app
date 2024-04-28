import 'package:freezed_annotation/freezed_annotation.dart';

import 'penalcode.dart';

part 'case_notes_offence.freezed.dart';
part 'case_notes_offence.g.dart';

@freezed
class CaseNotesOffence with _$CaseNotesOffence {
  factory CaseNotesOffence({
    int? id,
    dynamic iprs,
    int? penalCodeId,
    dynamic userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? caseFileId,
    Penalcode? penalcode,
  }) = _CaseNotesOffence;

  factory CaseNotesOffence.fromJson(Map<String, dynamic> json) =>
      _$CaseNotesOffenceFromJson(json);
}
