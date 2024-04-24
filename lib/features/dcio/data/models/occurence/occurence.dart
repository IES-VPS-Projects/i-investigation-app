import 'package:freezed_annotation/freezed_annotation.dart';

import 'occurence_detail.dart';

part 'occurence.freezed.dart';
part 'occurence.g.dart';

@freezed
class Occurence with _$Occurence {
  factory Occurence({
    int? id,
    @JsonKey(name: 'ob_no') String? obNo,
    String? narrative,
    String? location,
    dynamic lat,
    dynamic long,
    String? module,
    @JsonKey(name: 'report_timestamp') DateTime? reportTimestamp,
    @JsonKey(name: 'is_complete') bool? isComplete,
    @JsonKey(name: 'is_closed') bool? isClosed,
    @JsonKey(name: 'posted_date') DateTime? postedDate,
    @JsonKey(name: 'penal_code') dynamic penalCode,
    @JsonKey(name: 'ocs_action') dynamic ocsAction,
    dynamic policeStationId,
    @JsonKey(name: 'OccurenceDetails') List<OccurenceDetail>? occurenceDetails,
    @JsonKey(name: 'police_station') dynamic policeStation,
    @JsonKey(name: 'CaseFile') List<dynamic>? caseFile,
  }) = _Occurence;

  factory Occurence.fromJson(Map<String, dynamic> json) =>
      _$OccurenceFromJson(json);
}
