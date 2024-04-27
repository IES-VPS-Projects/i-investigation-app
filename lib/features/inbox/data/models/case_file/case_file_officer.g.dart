// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_file_officer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseFileOfficerImpl _$$CaseFileOfficerImplFromJson(
        Map<String, dynamic> json) =>
    _$CaseFileOfficerImpl(
      id: json['id'] as int?,
      caseFileId: json['caseFileId'] as int?,
      userId: json['userId'] as int?,
      accepted: json['accepted'] as String?,
    );

Map<String, dynamic> _$$CaseFileOfficerImplToJson(
        _$CaseFileOfficerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caseFileId': instance.caseFileId,
      'userId': instance.userId,
      'accepted': instance.accepted,
    };
