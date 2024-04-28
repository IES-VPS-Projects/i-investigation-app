import 'package:freezed_annotation/freezed_annotation.dart';

part 'penal_code_response.freezed.dart';
part 'penal_code_response.g.dart';

@freezed
class PenalCodeResponse with _$PenalCodeResponse {
  factory PenalCodeResponse({
    int? id,
    String? penal,
    String? description,
  }) = _PenalCodeResponse;

  factory PenalCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$PenalCodeResponseFromJson(json);
}
