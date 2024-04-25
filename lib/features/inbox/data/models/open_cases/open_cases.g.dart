// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_cases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenCasesImpl _$$OpenCasesImplFromJson(Map<String, dynamic> json) =>
    _$OpenCasesImpl(
      id: json['id'] as int?,
      available: json['available'] as bool?,
      userId: json['userId'] as int?,
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      occurenceId: json['occurenceId'] as int?,
      caseFileOfficers: (json['CaseFileOfficers'] as List<dynamic>?)
          ?.map((e) => CaseFileOfficer.fromJson(e as Map<String, dynamic>))
          .toList(),
      caseMaterial: json['CaseMaterial'] as List<dynamic>?,
      caseNotes: json['CaseNotes'] as List<dynamic>?,
      caseSummary: json['CaseSummary'] as List<dynamic>?,
      leadOfficer: json['leadOfficer'] == null
          ? null
          : LeadOfficer.fromJson(json['leadOfficer'] as Map<String, dynamic>),
      occurence: json['occurence'] == null
          ? null
          : Occurence.fromJson(json['occurence'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpenCasesImplToJson(_$OpenCasesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'available': instance.available,
      'userId': instance.userId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'occurenceId': instance.occurenceId,
      'CaseFileOfficers': instance.caseFileOfficers,
      'CaseMaterial': instance.caseMaterial,
      'CaseNotes': instance.caseNotes,
      'CaseSummary': instance.caseSummary,
      'leadOfficer': instance.leadOfficer,
      'occurence': instance.occurence,
    };