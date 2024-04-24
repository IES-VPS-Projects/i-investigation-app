import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    int? id,
    bool? available,
    dynamic userId,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? occurenceId,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
