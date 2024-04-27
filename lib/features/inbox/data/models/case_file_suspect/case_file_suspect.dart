import 'package:freezed_annotation/freezed_annotation.dart';

import 'case_file.dart';
import 'iprs.dart';

part 'case_file_suspect.freezed.dart';
part 'case_file_suspect.g.dart';

@freezed
class CaseFileSuspect with _$CaseFileSuspect {
  factory CaseFileSuspect({
    int? id,
    String? picture,
    int? userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
    dynamic caseNotesId,
    int? caseFileId,
    @JsonKey(name: 'CaseFile') CaseFile? caseFile,
    Iprs? iprs,
  }) = _CaseFileSuspect;

  factory CaseFileSuspect.fromJson(Map<String, dynamic> json) =>
      _$CaseFileSuspectFromJson(json);
}
