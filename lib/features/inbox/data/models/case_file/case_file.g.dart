// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseFileImpl _$$CaseFileImplFromJson(Map<String, dynamic> json) =>
    _$CaseFileImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CaseFileImplToJson(_$CaseFileImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
