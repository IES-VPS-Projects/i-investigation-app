// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_officer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadOfficerImpl _$$LeadOfficerImplFromJson(Map<String, dynamic> json) =>
    _$LeadOfficerImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      serviceNumber: json['service_number'] as String?,
      password: json['password'],
      onetimePassword: json['onetime_password'] as String?,
      profilePic: json['profile_pic'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      caseFileOfficersId: json['caseFileOfficersId'],
    );

Map<String, dynamic> _$$LeadOfficerImplToJson(_$LeadOfficerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'service_number': instance.serviceNumber,
      'password': instance.password,
      'onetime_password': instance.onetimePassword,
      'profile_pic': instance.profilePic,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'caseFileOfficersId': instance.caseFileOfficersId,
    };