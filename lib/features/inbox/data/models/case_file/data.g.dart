// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
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
      caseSummary: json['CaseSummary'] as List<dynamic>?,
      caseMaterial: (json['CaseMaterial'] as List<dynamic>?)
          ?.map((e) => CaseMaterial.fromJson(e as Map<String, dynamic>))
          .toList(),
      caseNotesWitness: (json['CaseNotesWitness'] as List<dynamic>?)
          ?.map((e) => CaseNotesWitness.fromJson(e as Map<String, dynamic>))
          .toList(),
      caseNotesSuspect: (json['CaseNotesSuspect'] as List<dynamic>?)
          ?.map((e) => CaseNotesSuspect.fromJson(e as Map<String, dynamic>))
          .toList(),
      caseNotes: (json['CaseNotes'] as List<dynamic>?)
          ?.map((e) => CaseNote.fromJson(e as Map<String, dynamic>))
          .toList(),
      caseNotesOffences: (json['CaseNotesOffences'] as List<dynamic>?)
          ?.map((e) => CaseNotesOffence.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'available': instance.available,
      'userId': instance.userId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'occurenceId': instance.occurenceId,
      'CaseFileOfficers': instance.caseFileOfficers,
      'CaseSummary': instance.caseSummary,
      'CaseMaterial': instance.caseMaterial,
      'CaseNotesWitness': instance.caseNotesWitness,
      'CaseNotesSuspect': instance.caseNotesSuspect,
      'CaseNotes': instance.caseNotes,
      'CaseNotesOffences': instance.caseNotesOffences,
    };
