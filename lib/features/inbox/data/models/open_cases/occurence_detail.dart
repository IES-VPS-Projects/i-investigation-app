import 'package:freezed_annotation/freezed_annotation.dart';

part 'occurence_detail.freezed.dart';
part 'occurence_detail.g.dart';

@freezed
class OccurenceDetail with _$OccurenceDetail {
  factory OccurenceDetail({
    int? id,
    String? details,
    int? occurenceId,
  }) = _OccurenceDetail;

  factory OccurenceDetail.fromJson(Map<String, dynamic> json) =>
      _$OccurenceDetailFromJson(json);
}
