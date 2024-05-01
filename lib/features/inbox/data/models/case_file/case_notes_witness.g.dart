// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_notes_witness.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseNotesWitnessImpl _$$CaseNotesWitnessImplFromJson(
        Map<String, dynamic> json) =>
    _$CaseNotesWitnessImpl(
      id: json['id'] as int?,
      picture: json['picture'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      iPrsPersonId: json['iPRS_PersonId'] as int?,
      userId: json['userId'] as int?,
      caseFileId: json['caseFileId'] as int?,
      caseNotesId: json['caseNotesId'],
      caseSummaryId: json['caseSummaryId'],
      iprs: json['iprs'] == null
          ? null
          : Iprs.fromJson(json['iprs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CaseNotesWitnessImplToJson(
        _$CaseNotesWitnessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'created_at': instance.createdAt?.toIso8601String(),
      'iPRS_PersonId': instance.iPrsPersonId,
      'userId': instance.userId,
      'caseFileId': instance.caseFileId,
      'caseNotesId': instance.caseNotesId,
      'caseSummaryId': instance.caseSummaryId,
      'iprs': instance.iprs,
    };
