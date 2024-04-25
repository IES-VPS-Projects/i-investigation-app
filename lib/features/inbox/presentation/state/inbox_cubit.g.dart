// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InboxStatePayloadImpl _$$InboxStatePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$InboxStatePayloadImpl(
      error: json['error'] as String?,
      page: json['page'] as int?,
      cases: (json['cases'] as List<dynamic>?)
          ?.map((e) => OpenCases.fromJson(e as Map<String, dynamic>))
          .toList(),
      iprsModel: json['iprsModel'] == null
          ? null
          : IprsModel.fromJson(json['iprsModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InboxStatePayloadImplToJson(
        _$InboxStatePayloadImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'page': instance.page,
      'cases': instance.cases,
      'iprsModel': instance.iprsModel,
    };
