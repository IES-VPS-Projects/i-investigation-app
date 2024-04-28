import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_material.freezed.dart';
part 'case_material.g.dart';

@freezed
class CaseMaterial with _$CaseMaterial {
  factory CaseMaterial({
    int? id,
    int? caseFileId,
    String? title,
    String? narrative,
    dynamic picture,
    dynamic video,
    String? audio,
    dynamic userId,
    dynamic location,
    dynamic locationName,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _CaseMaterial;

  factory CaseMaterial.fromJson(Map<String, dynamic> json) =>
      _$CaseMaterialFromJson(json);
}
