import 'package:freezed_annotation/freezed_annotation.dart';

import 'iprs.dart';

part 'case_notes_witness.freezed.dart';
part 'case_notes_witness.g.dart';

@freezed
class CaseNotesWitness with _$CaseNotesWitness {
  factory CaseNotesWitness({
    int? id,
    String? picture,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
    int? userId,
    int? caseFileId,
    dynamic caseNotesId,
    Iprs? iprs,
  }) = _CaseNotesWitness;

  factory CaseNotesWitness.fromJson(Map<String, dynamic> json) =>
      _$CaseNotesWitnessFromJson(json);
}
