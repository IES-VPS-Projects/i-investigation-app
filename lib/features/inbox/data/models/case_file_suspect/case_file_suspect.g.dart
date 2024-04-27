// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_file_suspect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseFileSuspectImpl _$$CaseFileSuspectImplFromJson(
        Map<String, dynamic> json) =>
    _$CaseFileSuspectImpl(
      id: json['id'] as int?,
      picture: json['picture'] as String?,
      userId: json['userId'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      iPrsPersonId: json['iPRS_PersonId'] as int?,
      caseNotesId: json['caseNotesId'],
      caseFileId: json['caseFileId'] as int?,
      caseFile: json['CaseFile'] == null
          ? null
          : CaseFile.fromJson(json['CaseFile'] as Map<String, dynamic>),
      iprs: json['iprs'] == null
          ? null
          : Iprs.fromJson(json['iprs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CaseFileSuspectImplToJson(
        _$CaseFileSuspectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'userId': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'iPRS_PersonId': instance.iPrsPersonId,
      'caseNotesId': instance.caseNotesId,
      'caseFileId': instance.caseFileId,
      'CaseFile': instance.caseFile,
      'iprs': instance.iprs,
    };
