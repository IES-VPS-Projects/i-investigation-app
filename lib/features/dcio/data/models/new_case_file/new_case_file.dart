import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'new_case_file.freezed.dart';
part 'new_case_file.g.dart';

@freezed
class NewCaseFile with _$NewCaseFile {
  factory NewCaseFile({
    String? message,
    Data? data,
  }) = _NewCaseFile;

  factory NewCaseFile.fromJson(Map<String, dynamic> json) =>
      _$NewCaseFileFromJson(json);
}
