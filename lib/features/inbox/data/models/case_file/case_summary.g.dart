// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseSummaryImpl _$$CaseSummaryImplFromJson(Map<String, dynamic> json) =>
    _$CaseSummaryImpl(
      id: json['id'] as int?,
      caseFileId: json['caseFileId'] as int?,
      summary: json['summary'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CaseSummaryImplToJson(_$CaseSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caseFileId': instance.caseFileId,
      'summary': instance.summary,
      'created_at': instance.createdAt?.toIso8601String(),
    };
