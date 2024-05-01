// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_notes_witness.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaseNotesWitness _$CaseNotesWitnessFromJson(Map<String, dynamic> json) {
  return _CaseNotesWitness.fromJson(json);
}

/// @nodoc
mixin _$CaseNotesWitness {
  int? get id => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'iPRS_PersonId')
  int? get iPrsPersonId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get caseFileId => throw _privateConstructorUsedError;
  dynamic get caseNotesId => throw _privateConstructorUsedError;
  dynamic get caseSummaryId => throw _privateConstructorUsedError;
  Iprs? get iprs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseNotesWitnessCopyWith<CaseNotesWitness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseNotesWitnessCopyWith<$Res> {
  factory $CaseNotesWitnessCopyWith(
          CaseNotesWitness value, $Res Function(CaseNotesWitness) then) =
      _$CaseNotesWitnessCopyWithImpl<$Res, CaseNotesWitness>;
  @useResult
  $Res call(
      {int? id,
      String? picture,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
      int? userId,
      int? caseFileId,
      dynamic caseNotesId,
      dynamic caseSummaryId,
      Iprs? iprs});

  $IprsCopyWith<$Res>? get iprs;
}

/// @nodoc
class _$CaseNotesWitnessCopyWithImpl<$Res, $Val extends CaseNotesWitness>
    implements $CaseNotesWitnessCopyWith<$Res> {
  _$CaseNotesWitnessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? picture = freezed,
    Object? createdAt = freezed,
    Object? iPrsPersonId = freezed,
    Object? userId = freezed,
    Object? caseFileId = freezed,
    Object? caseNotesId = freezed,
    Object? caseSummaryId = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iPrsPersonId: freezed == iPrsPersonId
          ? _value.iPrsPersonId
          : iPrsPersonId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseFileId: freezed == caseFileId
          ? _value.caseFileId
          : caseFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseNotesId: freezed == caseNotesId
          ? _value.caseNotesId
          : caseNotesId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caseSummaryId: freezed == caseSummaryId
          ? _value.caseSummaryId
          : caseSummaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      iprs: freezed == iprs
          ? _value.iprs
          : iprs // ignore: cast_nullable_to_non_nullable
              as Iprs?,
    ) as $Val);
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
abstract class _$$CaseNotesWitnessImplCopyWith<$Res>
    implements $CaseNotesWitnessCopyWith<$Res> {
  factory _$$CaseNotesWitnessImplCopyWith(_$CaseNotesWitnessImpl value,
          $Res Function(_$CaseNotesWitnessImpl) then) =
      __$$CaseNotesWitnessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? picture,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'iPRS_PersonId') int? iPrsPersonId,
      int? userId,
      int? caseFileId,
      dynamic caseNotesId,
      dynamic caseSummaryId,
      Iprs? iprs});

  @override
  $IprsCopyWith<$Res>? get iprs;
}

/// @nodoc
class __$$CaseNotesWitnessImplCopyWithImpl<$Res>
    extends _$CaseNotesWitnessCopyWithImpl<$Res, _$CaseNotesWitnessImpl>
    implements _$$CaseNotesWitnessImplCopyWith<$Res> {
  __$$CaseNotesWitnessImplCopyWithImpl(_$CaseNotesWitnessImpl _value,
      $Res Function(_$CaseNotesWitnessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? picture = freezed,
    Object? createdAt = freezed,
    Object? iPrsPersonId = freezed,
    Object? userId = freezed,
    Object? caseFileId = freezed,
    Object? caseNotesId = freezed,
    Object? caseSummaryId = freezed,
    Object? iprs = freezed,
  }) {
    return _then(_$CaseNotesWitnessImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iPrsPersonId: freezed == iPrsPersonId
          ? _value.iPrsPersonId
          : iPrsPersonId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseFileId: freezed == caseFileId
          ? _value.caseFileId
          : caseFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseNotesId: freezed == caseNotesId
          ? _value.caseNotesId
          : caseNotesId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caseSummaryId: freezed == caseSummaryId
          ? _value.caseSummaryId
          : caseSummaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      iprs: freezed == iprs
          ? _value.iprs
          : iprs // ignore: cast_nullable_to_non_nullable
              as Iprs?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseNotesWitnessImpl implements _CaseNotesWitness {
  _$CaseNotesWitnessImpl(
      {this.id,
      this.picture,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'iPRS_PersonId') this.iPrsPersonId,
      this.userId,
      this.caseFileId,
      this.caseNotesId,
      this.caseSummaryId,
      this.iprs});

  factory _$CaseNotesWitnessImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseNotesWitnessImplFromJson(json);

  @override
  final int? id;
  @override
  final String? picture;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'iPRS_PersonId')
  final int? iPrsPersonId;
  @override
  final int? userId;
  @override
  final int? caseFileId;
  @override
  final dynamic caseNotesId;
  @override
  final dynamic caseSummaryId;
  @override
  final Iprs? iprs;

  @override
  String toString() {
    return 'CaseNotesWitness(id: $id, picture: $picture, createdAt: $createdAt, iPrsPersonId: $iPrsPersonId, userId: $userId, caseFileId: $caseFileId, caseNotesId: $caseNotesId, caseSummaryId: $caseSummaryId, iprs: $iprs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseNotesWitnessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.iPrsPersonId, iPrsPersonId) ||
                other.iPrsPersonId == iPrsPersonId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.caseFileId, caseFileId) ||
                other.caseFileId == caseFileId) &&
            const DeepCollectionEquality()
                .equals(other.caseNotesId, caseNotesId) &&
            const DeepCollectionEquality()
                .equals(other.caseSummaryId, caseSummaryId) &&
            (identical(other.iprs, iprs) || other.iprs == iprs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      picture,
      createdAt,
      iPrsPersonId,
      userId,
      caseFileId,
      const DeepCollectionEquality().hash(caseNotesId),
      const DeepCollectionEquality().hash(caseSummaryId),
      iprs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseNotesWitnessImplCopyWith<_$CaseNotesWitnessImpl> get copyWith =>
      __$$CaseNotesWitnessImplCopyWithImpl<_$CaseNotesWitnessImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseNotesWitnessImplToJson(
      this,
    );
  }
}

abstract class _CaseNotesWitness implements CaseNotesWitness {
  factory _CaseNotesWitness(
      {final int? id,
      final String? picture,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'iPRS_PersonId') final int? iPrsPersonId,
      final int? userId,
      final int? caseFileId,
      final dynamic caseNotesId,
      final dynamic caseSummaryId,
      final Iprs? iprs}) = _$CaseNotesWitnessImpl;

  factory _CaseNotesWitness.fromJson(Map<String, dynamic> json) =
      _$CaseNotesWitnessImpl.fromJson;

  @override
  int? get id;
  @override
  String? get picture;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'iPRS_PersonId')
  int? get iPrsPersonId;
  @override
  int? get userId;
  @override
  int? get caseFileId;
  @override
  dynamic get caseNotesId;
  @override
  dynamic get caseSummaryId;
  @override
  Iprs? get iprs;
  @override
  @JsonKey(ignore: true)
  _$$CaseNotesWitnessImplCopyWith<_$CaseNotesWitnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
