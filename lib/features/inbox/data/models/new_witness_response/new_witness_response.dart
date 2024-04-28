import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'new_witness_response.freezed.dart';
part 'new_witness_response.g.dart';

@freezed
class NewWitnessResponse with _$NewWitnessResponse {
  factory NewWitnessResponse({
    String? message,
    Data? data,
  }) = _NewWitnessResponse;

  factory NewWitnessResponse.fromJson(Map<String, dynamic> json) =>
      _$NewWitnessResponseFromJson(json);
}
