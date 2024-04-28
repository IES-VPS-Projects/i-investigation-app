// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InboxStatePayloadImpl _$$InboxStatePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$InboxStatePayloadImpl(
      error: json['error'] as String?,
      page: json['page'] as int?,
      cases: (json['cases'] as List<dynamic>?)
          ?.map((e) => OpenCases.fromJson(e as Map<String, dynamic>))
          .toList(),
      caseFile: json['caseFile'] == null
          ? null
          : CaseFile.fromJson(json['caseFile'] as Map<String, dynamic>),
      iprsModel: json['iprsModel'] == null
          ? null
          : IprsModel.fromJson(json['iprsModel'] as Map<String, dynamic>),
      penalCodes: (json['penalCodes'] as List<dynamic>?)
          ?.map((e) => PenalCodeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      recordingPath: json['recordingPath'] as String?,
    );

Map<String, dynamic> _$$InboxStatePayloadImplToJson(
        _$InboxStatePayloadImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'page': instance.page,
      'cases': instance.cases,
      'caseFile': instance.caseFile,
      'iprsModel': instance.iprsModel,
      'penalCodes': instance.penalCodes,
      'recordingPath': instance.recordingPath,
    };
