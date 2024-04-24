// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occurence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OccurenceImpl _$$OccurenceImplFromJson(Map<String, dynamic> json) =>
    _$OccurenceImpl(
      id: json['id'] as int?,
      obNo: json['ob_no'] as String?,
      narrative: json['narrative'] as String?,
      location: json['location'] as String?,
      lat: json['lat'],
      long: json['long'],
      module: json['module'] as String?,
      reportTimestamp: json['report_timestamp'] == null
          ? null
          : DateTime.parse(json['report_timestamp'] as String),
      isComplete: json['is_complete'] as bool?,
      isClosed: json['is_closed'] as bool?,
      postedDate: json['posted_date'] == null
          ? null
          : DateTime.parse(json['posted_date'] as String),
      penalCode: json['penal_code'],
      ocsAction: json['ocs_action'],
      policeStationId: json['policeStationId'],
      occurenceDetails: (json['OccurenceDetails'] as List<dynamic>?)
          ?.map((e) => OccurenceDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      policeStation: json['police_station'],
      caseFile: json['CaseFile'] as List<dynamic>?,
    );

Map<String, dynamic> _$$OccurenceImplToJson(_$OccurenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ob_no': instance.obNo,
      'narrative': instance.narrative,
      'location': instance.location,
      'lat': instance.lat,
      'long': instance.long,
      'module': instance.module,
      'report_timestamp': instance.reportTimestamp?.toIso8601String(),
      'is_complete': instance.isComplete,
      'is_closed': instance.isClosed,
      'posted_date': instance.postedDate?.toIso8601String(),
      'penal_code': instance.penalCode,
      'ocs_action': instance.ocsAction,
      'policeStationId': instance.policeStationId,
      'OccurenceDetails': instance.occurenceDetails,
      'police_station': instance.policeStation,
      'CaseFile': instance.caseFile,
    };
