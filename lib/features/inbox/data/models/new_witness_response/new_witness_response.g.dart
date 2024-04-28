// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_witness_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewWitnessResponseImpl _$$NewWitnessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewWitnessResponseImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewWitnessResponseImplToJson(
        _$NewWitnessResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
