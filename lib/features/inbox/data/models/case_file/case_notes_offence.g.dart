// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_notes_offence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseNotesOffenceImpl _$$CaseNotesOffenceImplFromJson(
        Map<String, dynamic> json) =>
    _$CaseNotesOffenceImpl(
      id: json['id'] as int?,
      iprs: json['iprs'],
      penalCodeId: json['penalCodeId'] as int?,
      userId: json['userId'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      caseFileId: json['caseFileId'] as int?,
      caseSummaryId: json['caseSummaryId'],
      penalcode: json['penalcode'] == null
          ? null
          : Penalcode.fromJson(json['penalcode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CaseNotesOffenceImplToJson(
        _$CaseNotesOffenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iprs': instance.iprs,
      'penalCodeId': instance.penalCodeId,
      'userId': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'caseFileId': instance.caseFileId,
      'caseSummaryId': instance.caseSummaryId,
      'penalcode': instance.penalcode,
    };
