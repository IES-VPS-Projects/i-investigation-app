// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_notes_offence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaseNotesOffence _$CaseNotesOffenceFromJson(Map<String, dynamic> json) {
  return _CaseNotesOffence.fromJson(json);
}

/// @nodoc
mixin _$CaseNotesOffence {
  int? get id => throw _privateConstructorUsedError;
  dynamic get iprs => throw _privateConstructorUsedError;
  int? get penalCodeId => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get caseFileId => throw _privateConstructorUsedError;
  dynamic get caseSummaryId => throw _privateConstructorUsedError;
  Penalcode? get penalcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseNotesOffenceCopyWith<CaseNotesOffence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseNotesOffenceCopyWith<$Res> {
  factory $CaseNotesOffenceCopyWith(
          CaseNotesOffence value, $Res Function(CaseNotesOffence) then) =
      _$CaseNotesOffenceCopyWithImpl<$Res, CaseNotesOffence>;
  @useResult
  $Res call(
      {int? id,
      dynamic iprs,
      int? penalCodeId,
      dynamic userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? caseFileId,
      dynamic caseSummaryId,
      Penalcode? penalcode});

  $PenalcodeCopyWith<$Res>? get penalcode;
}

/// @nodoc
class _$CaseNotesOffenceCopyWithImpl<$Res, $Val extends CaseNotesOffence>
    implements $CaseNotesOffenceCopyWith<$Res> {
  _$CaseNotesOffenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iprs = freezed,
    Object? penalCodeId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? caseFileId = freezed,
    Object? caseSummaryId = freezed,
    Object? penalcode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iprs: freezed == iprs
          ? _value.iprs
          : iprs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      penalCodeId: freezed == penalCodeId
          ? _value.penalCodeId
          : penalCodeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      caseFileId: freezed == caseFileId
          ? _value.caseFileId
          : caseFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseSummaryId: freezed == caseSummaryId
          ? _value.caseSummaryId
          : caseSummaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      penalcode: freezed == penalcode
          ? _value.penalcode
          : penalcode // ignore: cast_nullable_to_non_nullable
              as Penalcode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PenalcodeCopyWith<$Res>? get penalcode {
    if (_value.penalcode == null) {
      return null;
    }

    return $PenalcodeCopyWith<$Res>(_value.penalcode!, (value) {
      return _then(_value.copyWith(penalcode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CaseNotesOffenceImplCopyWith<$Res>
    implements $CaseNotesOffenceCopyWith<$Res> {
  factory _$$CaseNotesOffenceImplCopyWith(_$CaseNotesOffenceImpl value,
          $Res Function(_$CaseNotesOffenceImpl) then) =
      __$$CaseNotesOffenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      dynamic iprs,
      int? penalCodeId,
      dynamic userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? caseFileId,
      dynamic caseSummaryId,
      Penalcode? penalcode});

  @override
  $PenalcodeCopyWith<$Res>? get penalcode;
}

/// @nodoc
class __$$CaseNotesOffenceImplCopyWithImpl<$Res>
    extends _$CaseNotesOffenceCopyWithImpl<$Res, _$CaseNotesOffenceImpl>
    implements _$$CaseNotesOffenceImplCopyWith<$Res> {
  __$$CaseNotesOffenceImplCopyWithImpl(_$CaseNotesOffenceImpl _value,
      $Res Function(_$CaseNotesOffenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? iprs = freezed,
    Object? penalCodeId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? caseFileId = freezed,
    Object? caseSummaryId = freezed,
    Object? penalcode = freezed,
  }) {
    return _then(_$CaseNotesOffenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      iprs: freezed == iprs
          ? _value.iprs
          : iprs // ignore: cast_nullable_to_non_nullable
              as dynamic,
      penalCodeId: freezed == penalCodeId
          ? _value.penalCodeId
          : penalCodeId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      caseFileId: freezed == caseFileId
          ? _value.caseFileId
          : caseFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseSummaryId: freezed == caseSummaryId
          ? _value.caseSummaryId
          : caseSummaryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      penalcode: freezed == penalcode
          ? _value.penalcode
          : penalcode // ignore: cast_nullable_to_non_nullable
              as Penalcode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseNotesOffenceImpl implements _CaseNotesOffence {
  _$CaseNotesOffenceImpl(
      {this.id,
      this.iprs,
      this.penalCodeId,
      this.userId,
      @JsonKey(name: 'created_at') this.createdAt,
      this.caseFileId,
      this.caseSummaryId,
      this.penalcode});

  factory _$CaseNotesOffenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseNotesOffenceImplFromJson(json);

  @override
  final int? id;
  @override
  final dynamic iprs;
  @override
  final int? penalCodeId;
  @override
  final dynamic userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final int? caseFileId;
  @override
  final dynamic caseSummaryId;
  @override
  final Penalcode? penalcode;

  @override
  String toString() {
    return 'CaseNotesOffence(id: $id, iprs: $iprs, penalCodeId: $penalCodeId, userId: $userId, createdAt: $createdAt, caseFileId: $caseFileId, caseSummaryId: $caseSummaryId, penalcode: $penalcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseNotesOffenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.iprs, iprs) &&
            (identical(other.penalCodeId, penalCodeId) ||
                other.penalCodeId == penalCodeId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.caseFileId, caseFileId) ||
                other.caseFileId == caseFileId) &&
            const DeepCollectionEquality()
                .equals(other.caseSummaryId, caseSummaryId) &&
            (identical(other.penalcode, penalcode) ||
                other.penalcode == penalcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(iprs),
      penalCodeId,
      const DeepCollectionEquality().hash(userId),
      createdAt,
      caseFileId,
      const DeepCollectionEquality().hash(caseSummaryId),
      penalcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseNotesOffenceImplCopyWith<_$CaseNotesOffenceImpl> get copyWith =>
      __$$CaseNotesOffenceImplCopyWithImpl<_$CaseNotesOffenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseNotesOffenceImplToJson(
      this,
    );
  }
}

abstract class _CaseNotesOffence implements CaseNotesOffence {
  factory _CaseNotesOffence(
      {final int? id,
      final dynamic iprs,
      final int? penalCodeId,
      final dynamic userId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? caseFileId,
      final dynamic caseSummaryId,
      final Penalcode? penalcode}) = _$CaseNotesOffenceImpl;

  factory _CaseNotesOffence.fromJson(Map<String, dynamic> json) =
      _$CaseNotesOffenceImpl.fromJson;

  @override
  int? get id;
  @override
  dynamic get iprs;
  @override
  int? get penalCodeId;
  @override
  dynamic get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  int? get caseFileId;
  @override
  dynamic get caseSummaryId;
  @override
  Penalcode? get penalcode;
  @override
  @JsonKey(ignore: true)
  _$$CaseNotesOffenceImplCopyWith<_$CaseNotesOffenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
