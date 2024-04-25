// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iprs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IprsModelImpl _$$IprsModelImplFromJson(Map<String, dynamic> json) =>
    _$IprsModelImpl(
      id: json['id'] as int?,
      idNo: json['id_no'] as String?,
      passportNo: json['passport_no'],
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      nationality: json['nationality'] as String?,
      countyOfBirth: json['county_of_birth'],
      districtOfBirth: json['district_of_birth'] as String?,
      divisionOfBirth: json['division_of_birth'],
      locationOfBirth: json['location_of_birth'],
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      mugShot: json['mug_shot'],
    );

Map<String, dynamic> _$$IprsModelImplToJson(_$IprsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_no': instance.idNo,
      'passport_no': instance.passportNo,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'nationality': instance.nationality,
      'county_of_birth': instance.countyOfBirth,
      'district_of_birth': instance.districtOfBirth,
      'division_of_birth': instance.divisionOfBirth,
      'location_of_birth': instance.locationOfBirth,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'mug_shot': instance.mugShot,
    };
