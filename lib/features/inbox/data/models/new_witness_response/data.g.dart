// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as int?,
      picture: json['picture'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      iPrsPersonId: json['iPRS_PersonId'] as int?,
      userId: json['userId'] as int?,
      caseFileId: json['caseFileId'] as int?,
      caseNotesId: json['caseNotesId'],
      caseFile: json['CaseFile'] == null
          ? null
          : CaseFile.fromJson(json['CaseFile'] as Map<String, dynamic>),
      iprs: json['iprs'] == null
          ? null
          : Iprs.fromJson(json['iprs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'created_at': instance.createdAt?.toIso8601String(),
      'iPRS_PersonId': instance.iPrsPersonId,
      'userId': instance.userId,
      'caseFileId': instance.caseFileId,
      'caseNotesId': instance.caseNotesId,
      'CaseFile': instance.caseFile,
      'iprs': instance.iprs,
    };
