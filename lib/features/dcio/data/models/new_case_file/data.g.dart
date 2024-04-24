// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as int?,
      available: json['available'] as bool?,
      userId: json['userId'],
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      occurenceId: json['occurenceId'] as int?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'available': instance.available,
      'userId': instance.userId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'occurenceId': instance.occurenceId,
    };
