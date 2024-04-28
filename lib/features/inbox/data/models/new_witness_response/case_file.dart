import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_file.freezed.dart';
part 'case_file.g.dart';

@freezed
class CaseFile with _$CaseFile {
  factory CaseFile({
    int? id,
    bool? available,
    int? userId,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? occurenceId,
  }) = _CaseFile;

  factory CaseFile.fromJson(Map<String, dynamic> json) =>
      _$CaseFileFromJson(json);
}
