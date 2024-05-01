import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_summary.freezed.dart';
part 'case_summary.g.dart';

@freezed
class CaseSummary with _$CaseSummary {
  factory CaseSummary({
    int? id,
    int? caseFileId,
    String? summary,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _CaseSummary;

  factory CaseSummary.fromJson(Map<String, dynamic> json) =>
      _$CaseSummaryFromJson(json);
}
