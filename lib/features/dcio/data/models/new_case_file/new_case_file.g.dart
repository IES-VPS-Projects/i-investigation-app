// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_case_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewCaseFileImpl _$$NewCaseFileImplFromJson(Map<String, dynamic> json) =>
    _$NewCaseFileImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewCaseFileImplToJson(_$NewCaseFileImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
