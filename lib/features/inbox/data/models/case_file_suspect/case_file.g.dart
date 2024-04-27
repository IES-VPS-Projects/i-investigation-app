// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseFileImpl _$$CaseFileImplFromJson(Map<String, dynamic> json) =>
    _$CaseFileImpl(
      id: json['id'] as int?,
      available: json['available'] as bool?,
      userId: json['userId'] as int?,
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      occurenceId: json['occurenceId'] as int?,
    );

Map<String, dynamic> _$$CaseFileImplToJson(_$CaseFileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'available': instance.available,
      'userId': instance.userId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'occurenceId': instance.occurenceId,
    };
