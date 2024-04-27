import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_file_officer.freezed.dart';
part 'case_file_officer.g.dart';

@freezed
class CaseFileOfficer with _$CaseFileOfficer {
  factory CaseFileOfficer({
    int? id,
    int? caseFileId,
    int? userId,
    String? accepted,
  }) = _CaseFileOfficer;

  factory CaseFileOfficer.fromJson(Map<String, dynamic> json) =>
      _$CaseFileOfficerFromJson(json);
}
