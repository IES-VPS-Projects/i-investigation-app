import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'case_file.freezed.dart';
part 'case_file.g.dart';

@freezed
class CaseFile with _$CaseFile {
  factory CaseFile({
    String? message,
    Data? data,
  }) = _CaseFile;

  factory CaseFile.fromJson(Map<String, dynamic> json) =>
      _$CaseFileFromJson(json);
}
