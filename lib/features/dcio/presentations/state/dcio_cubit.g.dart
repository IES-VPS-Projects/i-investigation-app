// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dcio_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DcioStatePayloadImpl _$$DcioStatePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$DcioStatePayloadImpl(
      error: json['error'] as String?,
      page: json['page'] as int?,
      occurences: (json['occurences'] as List<dynamic>?)
          ?.map((e) => Occurence.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => Users.fromJson(e as Map<String, dynamic>))
          .toList(),
      caseFile: json['caseFile'] == null
          ? null
          : NewCaseFile.fromJson(json['caseFile'] as Map<String, dynamic>),
      officers: (json['officers'] as List<dynamic>?)
          ?.map((e) => Users.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DcioStatePayloadImplToJson(
        _$DcioStatePayloadImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'page': instance.page,
      'occurences': instance.occurences,
      'users': instance.users,
      'caseFile': instance.caseFile,
      'officers': instance.officers,
    };
