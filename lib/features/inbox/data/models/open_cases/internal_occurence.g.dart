// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_occurence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InternalOccurenceImpl _$$InternalOccurenceImplFromJson(
        Map<String, dynamic> json) =>
    _$InternalOccurenceImpl(
      id: json['id'] as int?,
      obNo: json['ob_no'] as String?,
      title: json['title'] as String?,
      created_at: json['created_at'] as String?,
      narrative: json['narrative'],
    );

Map<String, dynamic> _$$InternalOccurenceImplToJson(
        _$InternalOccurenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ob_no': instance.obNo,
      'title': instance.title,
      'created_at': instance.created_at,
      'narrative': instance.narrative,
    };
