// To parse this JSON data, do
//
//     final storeType = storeTypeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'counties_model.freezed.dart';
part 'counties_model.g.dart';

@freezed
abstract class CountiesModel with _$CountiesModel {
  const factory CountiesModel({
    String? name,
    String? capital,
    int? code,
    List<String>? sub_counties,
  }) = _CountiesModel;

  factory CountiesModel.fromJson(Map<String, dynamic> json) =>
      _$CountiesModelFromJson(json);
}
