import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_note.freezed.dart';
part 'case_note.g.dart';

@freezed
class CaseNote with _$CaseNote {
  factory CaseNote({
    int? id,
    int? caseFileId,
    String? title,
    String? narrative,
    String? picture,
    String? video,
    String? audio,
    dynamic userId,
    dynamic location,
    dynamic locationName,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _CaseNote;

  factory CaseNote.fromJson(Map<String, dynamic> json) =>
      _$CaseNoteFromJson(json);
}
