// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseNoteImpl _$$CaseNoteImplFromJson(Map<String, dynamic> json) =>
    _$CaseNoteImpl(
      id: json['id'] as int?,
      caseFileId: json['caseFileId'] as int?,
      title: json['title'] as String?,
      narrative: json['narrative'] as String?,
      picture: json['picture'],
      video: json['video'],
      audio: json['audio'] as String?,
      userId: json['userId'],
      location: json['location'],
      locationName: json['locationName'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      caseSummaryId: json['caseSummaryId'],
    );

Map<String, dynamic> _$$CaseNoteImplToJson(_$CaseNoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'caseFileId': instance.caseFileId,
      'title': instance.title,
      'narrative': instance.narrative,
      'picture': instance.picture,
      'video': instance.video,
      'audio': instance.audio,
      'userId': instance.userId,
      'location': instance.location,
      'locationName': instance.locationName,
      'created_at': instance.createdAt?.toIso8601String(),
      'caseSummaryId': instance.caseSummaryId,
    };
