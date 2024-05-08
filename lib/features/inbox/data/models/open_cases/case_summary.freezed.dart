// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaseSummary _$CaseSummaryFromJson(Map<String, dynamic> json) {
  return _CaseSummary.fromJson(json);
}

/// @nodoc
mixin _$CaseSummary {
  int? get id => throw _privateConstructorUsedError;
  int? get caseFileId => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseSummaryCopyWith<CaseSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseSummaryCopyWith<$Res> {
  factory $CaseSummaryCopyWith(
          CaseSummary value, $Res Function(CaseSummary) then) =
      _$CaseSummaryCopyWithImpl<$Res, CaseSummary>;
  @useResult
  $Res call(
      {int? id,
      int? caseFileId,
      String? summary,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$CaseSummaryCopyWithImpl<$Res, $Val extends CaseSummary>
    implements $CaseSummaryCopyWith<$Res> {
  _$CaseSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? caseFileId = freezed,
    Object? summary = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      caseFileId: freezed == caseFileId
          ? _value.caseFileId
          : caseFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaseSummaryImplCopyWith<$Res>
    implements $CaseSummaryCopyWith<$Res> {
  factory _$$CaseSummaryImplCopyWith(
          _$CaseSummaryImpl value, $Res Function(_$CaseSummaryImpl) then) =
      __$$CaseSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? caseFileId,
      String? summary,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$CaseSummaryImplCopyWithImpl<$Res>
    extends _$CaseSummaryCopyWithImpl<$Res, _$CaseSummaryImpl>
    implements _$$CaseSummaryImplCopyWith<$Res> {
  __$$CaseSummaryImplCopyWithImpl(
      _$CaseSummaryImpl _value, $Res Function(_$CaseSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? caseFileId = freezed,
    Object? summary = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$CaseSummaryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      caseFileId: freezed == caseFileId
          ? _value.caseFileId
          : caseFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseSummaryImpl implements _CaseSummary {
  _$CaseSummaryImpl(
      {this.id,
      this.caseFileId,
      this.summary,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$CaseSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseSummaryImplFromJson(json);

  @override
  final int? id;
  @override
  final int? caseFileId;
  @override
  final String? summary;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'CaseSummary(id: $id, caseFileId: $caseFileId, summary: $summary, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.caseFileId, caseFileId) ||
                other.caseFileId == caseFileId) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, caseFileId, summary, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseSummaryImplCopyWith<_$CaseSummaryImpl> get copyWith =>
      __$$CaseSummaryImplCopyWithImpl<_$CaseSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseSummaryImplToJson(
      this,
    );
  }
}

abstract class _CaseSummary implements CaseSummary {
  factory _CaseSummary(
          {final int? id,
          final int? caseFileId,
          final String? summary,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$CaseSummaryImpl;

  factory _CaseSummary.fromJson(Map<String, dynamic> json) =
      _$CaseSummaryImpl.fromJson;

  @override
  int? get id;
  @override
  int? get caseFileId;
  @override
  String? get summary;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CaseSummaryImplCopyWith<_$CaseSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
