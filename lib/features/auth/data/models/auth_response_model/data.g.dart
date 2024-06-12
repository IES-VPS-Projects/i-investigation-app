// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      serviceNumber: json['service_number'] as String?,
      password: json['password'] as String?,
      onetimePassword: json['onetime_password'] as String?,
      socketId: json['socketId'] as String?,
      profilePic: json['profile_pic'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      caseFileOfficersId: json['caseFileOfficersId'],
      userRoles: (json['UserRoles'] as List<dynamic>?)
          ?.map((e) => UserRole.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'service_number': instance.serviceNumber,
      'password': instance.password,
      'onetime_password': instance.onetimePassword,
      'socketId': instance.socketId,
      'profile_pic': instance.profilePic,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'caseFileOfficersId': instance.caseFileOfficersId,
      'UserRoles': instance.userRoles,
    };
