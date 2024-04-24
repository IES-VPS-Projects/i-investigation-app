// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counties_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountiesModelImpl _$$CountiesModelImplFromJson(Map<String, dynamic> json) =>
    _$CountiesModelImpl(
      name: json['name'] as String?,
      capital: json['capital'] as String?,
      code: json['code'] as int?,
      sub_counties: (json['sub_counties'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CountiesModelImplToJson(_$CountiesModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'capital': instance.capital,
      'code': instance.code,
      'sub_counties': instance.sub_counties,
    };
