import 'package:freezed_annotation/freezed_annotation.dart';

import 'case_file.dart';
import 'iprs.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    int? id,
    String? picture,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
    int? userId,
    int? caseFileId,
    dynamic caseNotesId,
    @JsonKey(name: 'CaseFile') CaseFile? caseFile,
    Iprs? iprs,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
