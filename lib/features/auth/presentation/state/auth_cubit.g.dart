// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStatePayloadImpl _$$AuthStatePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthStatePayloadImpl(
      error: json['error'] as String?,
      page: json['page'] as int?,
      user: json['user'] == null
          ? null
          : AuthResponseModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthStatePayloadImplToJson(
        _$AuthStatePayloadImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'page': instance.page,
      'user': instance.user,
    };
