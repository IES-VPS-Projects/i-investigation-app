// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_file_suspect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaseFileSuspect _$CaseFileSuspectFromJson(Map<String, dynamic> json) {
  return _CaseFileSuspect.fromJson(json);
}

/// @nodoc
mixin _$CaseFileSuspect {
  int? get id => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'iPRS_PersonId')
  int? get iPrsPersonId => throw _privateConstructorUsedError;
  dynamic get caseNotesId => throw _privateConstructorUsedError;
  int? get caseFileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CaseFile')
  CaseFile? get caseFile => throw _privateConstructorUsedError;
  Iprs? get iprs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseFileSuspectCopyWith<CaseFileSuspect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseFileSuspectCopyWith<$Res> {
  factory $CaseFileSuspectCopyWith(
          CaseFileSuspect value, $Res Function(CaseFileSuspect) then) =
      _$CaseFileSuspectCopyWithImpl<$Res, CaseFileSuspect>;
  @useResult
  $Res call(
      {int? id,
      String? picture,
      int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
      dynamic caseNotesId,
      int? caseFileId,
      @JsonKey(name: 'CaseFile') CaseFile? caseFile,
      Iprs? iprs});

  $CaseFileCopyWith<$Res>? get caseFile;
  $IprsCopyWith<$Res>? get iprs;
}

/// @nodoc
class _$CaseFileSuspectCopyWithImpl<$Res, $Val extends CaseFileSuspect>
    implements $CaseFileSuspectCopyWith<$Res> {
  _$CaseFileSuspectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? picture = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? iPrsPersonId = freezed,
    Object? caseNotesId = freezed,
    Object? caseFileId = freezed,
    Object? caseFile = freezed,
    Object? iprs = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iPrsPersonId: freezed == iPrsPersonId
          ? _value.iPrsPersonId
          : iPrsPersonId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseNotesId: freezed == caseNotesId
          ? _value.caseNotesId
          : caseNotesId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caseFileId: freezed == caseFileId
          ? _value.caseFileId
          : caseFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseFile: freezed == caseFile
          ? _value.caseFile
          : caseFile // ignore: cast_nullable_to_non_nullable
              as CaseFile?,
      iprs: freezed == iprs
          ? _value.iprs
          : iprs // ignore: cast_nullable_to_non_nullable
              as Iprs?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CaseFileCopyWith<$Res>? get caseFile {
    if (_value.caseFile == null) {
      return null;
    }

    return $CaseFileCopyWith<$Res>(_value.caseFile!, (value) {
      return _then(_value.copyWith(caseFile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IprsCopyWith<$Res>? get iprs {
    if (_value.iprs == null) {
      return null;
    }

    return $IprsCopyWith<$Res>(_value.iprs!, (value) {
      return _then(_value.copyWith(iprs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CaseFileSuspectImplCopyWith<$Res>
    implements $CaseFileSuspectCopyWith<$Res> {
  factory _$$CaseFileSuspectImplCopyWith(_$CaseFileSuspectImpl value,
          $Res Function(_$CaseFileSuspectImpl) then) =
      __$$CaseFileSuspectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? picture,
      int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
      dynamic caseNotesId,
      int? caseFileId,
      @JsonKey(name: 'CaseFile') CaseFile? caseFile,
      Iprs? iprs});

  @override
  $CaseFileCopyWith<$Res>? get caseFile;
  @override
  $IprsCopyWith<$Res>? get iprs;
}

/// @nodoc
class __$$CaseFileSuspectImplCopyWithImpl<$Res>
    extends _$CaseFileSuspectCopyWithImpl<$Res, _$CaseFileSuspectImpl>
    implements _$$CaseFileSuspectImplCopyWith<$Res> {
  __$$CaseFileSuspectImplCopyWithImpl(
      _$CaseFileSuspectImpl _value, $Res Function(_$CaseFileSuspectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? picture = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? iPrsPersonId = freezed,
    Object? caseNotesId = freezed,
    Object? caseFileId = freezed,
    Object? caseFile = freezed,
    Object? iprs = freezed,
  }) {
    return _then(_$CaseFileSuspectImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iPrsPersonId: freezed == iPrsPersonId
          ? _value.iPrsPersonId
          : iPrsPersonId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseNotesId: freezed == caseNotesId
          ? _value.caseNotesId
          : caseNotesId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caseFileId: freezed == caseFileId
          ? _value.caseFileId
          : caseFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseFile: freezed == caseFile
          ? _value.caseFile
          : caseFile // ignore: cast_nullable_to_non_nullable
              as CaseFile?,
      iprs: freezed == iprs
          ? _value.iprs
          : iprs // ignore: cast_nullable_to_non_nullable
              as Iprs?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseFileSuspectImpl implements _CaseFileSuspect {
  _$CaseFileSuspectImpl(
      {this.id,
      this.picture,
      this.userId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'iPRS_PersonId') this.iPrsPersonId,
      this.caseNotesId,
      this.caseFileId,
      @JsonKey(name: 'CaseFile') this.caseFile,
      this.iprs});

  factory _$CaseFileSuspectImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseFileSuspectImplFromJson(json);

  @override
  final int? id;
  @override
  final String? picture;
  @override
  final int? userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'iPRS_PersonId')
  final int? iPrsPersonId;
  @override
  final dynamic caseNotesId;
  @override
  final int? caseFileId;
  @override
  @JsonKey(name: 'CaseFile')
  final CaseFile? caseFile;
  @override
  final Iprs? iprs;

  @override
  String toString() {
    return 'CaseFileSuspect(id: $id, picture: $picture, userId: $userId, createdAt: $createdAt, iPrsPersonId: $iPrsPersonId, caseNotesId: $caseNotesId, caseFileId: $caseFileId, caseFile: $caseFile, iprs: $iprs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseFileSuspectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.iPrsPersonId, iPrsPersonId) ||
                other.iPrsPersonId == iPrsPersonId) &&
            const DeepCollectionEquality()
                .equals(other.caseNotesId, caseNotesId) &&
            (identical(other.caseFileId, caseFileId) ||
                other.caseFileId == caseFileId) &&
            (identical(other.caseFile, caseFile) ||
                other.caseFile == caseFile) &&
            (identical(other.iprs, iprs) || other.iprs == iprs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      picture,
      userId,
      createdAt,
      iPrsPersonId,
      const DeepCollectionEquality().hash(caseNotesId),
      caseFileId,
      caseFile,
      iprs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseFileSuspectImplCopyWith<_$CaseFileSuspectImpl> get copyWith =>
      __$$CaseFileSuspectImplCopyWithImpl<_$CaseFileSuspectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseFileSuspectImplToJson(
      this,
    );
  }
}

abstract class _CaseFileSuspect implements CaseFileSuspect {
  factory _CaseFileSuspect(
      {final int? id,
      final String? picture,
      final int? userId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'iPRS_PersonId') final int? iPrsPersonId,
      final dynamic caseNotesId,
      final int? caseFileId,
      @JsonKey(name: 'CaseFile') final CaseFile? caseFile,
      final Iprs? iprs}) = _$CaseFileSuspectImpl;

  factory _CaseFileSuspect.fromJson(Map<String, dynamic> json) =
      _$CaseFileSuspectImpl.fromJson;

  @override
  int? get id;
  @override
  String? get picture;
  @override
  int? get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'iPRS_PersonId')
  int? get iPrsPersonId;
  @override
  dynamic get caseNotesId;
  @override
  int? get caseFileId;
  @override
  @JsonKey(name: 'CaseFile')
  CaseFile? get caseFile;
  @override
  Iprs? get iprs;
  @override
  @JsonKey(ignore: true)
  _$$CaseFileSuspectImplCopyWith<_$CaseFileSuspectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}