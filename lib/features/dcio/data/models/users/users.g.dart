// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersImpl _$$UsersImplFromJson(Map<String, dynamic> json) => _$UsersImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      serviceNumber: json['service_number'] as String?,
      password: json['password'] as String?,
      onetimePassword: json['onetime_password'] as String?,
      profilePic: json['profile_pic'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UsersImplToJson(_$UsersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'service_number': instance.serviceNumber,
      'password': instance.password,
      'onetime_password': instance.onetimePassword,
      'profile_pic': instance.profilePic,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
