// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occurence_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OccurenceDetailImpl _$$OccurenceDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$OccurenceDetailImpl(
      id: json['id'] as int?,
      details: json['details'] as String?,
      occurenceId: json['occurenceId'] as int?,
    );

Map<String, dynamic> _$$OccurenceDetailImplToJson(
        _$OccurenceDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'details': instance.details,
      'occurenceId': instance.occurenceId,
    };
