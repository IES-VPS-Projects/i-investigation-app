import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_occurence.freezed.dart';
part 'internal_occurence.g.dart';

@freezed
class InternalOccurence with _$InternalOccurence {
  factory InternalOccurence({
    int? id,
    @JsonKey(name: 'ob_no') String? obNo,
    String? title,
    String? created_at,
    dynamic narrative,
  }) = _InternalOccurence;

  factory InternalOccurence.fromJson(Map<String, dynamic> json) =>
      _$InternalOccurenceFromJson(json);
}
