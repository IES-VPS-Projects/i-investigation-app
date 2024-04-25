// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_cases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenCases _$OpenCasesFromJson(Map<String, dynamic> json) {
  return _OpenCases.fromJson(json);
}

/// @nodoc
mixin _$OpenCases {
  int? get id => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get occurenceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CaseFileOfficers')
  List<CaseFileOfficer>? get caseFileOfficers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'CaseMaterial')
  List<dynamic>? get caseMaterial => throw _privateConstructorUsedError;
  @JsonKey(name: 'CaseNotes')
  List<dynamic>? get caseNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'CaseSummary')
  List<dynamic>? get caseSummary => throw _privateConstructorUsedError;
  LeadOfficer? get leadOfficer => throw _privateConstructorUsedError;
  Occurence? get occurence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenCasesCopyWith<OpenCases> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenCasesCopyWith<$Res> {
  factory $OpenCasesCopyWith(OpenCases value, $Res Function(OpenCases) then) =
      _$OpenCasesCopyWithImpl<$Res, OpenCases>;
  @useResult
  $Res call(
      {int? id,
      bool? available,
      int? userId,
      String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? occurenceId,
      @JsonKey(name: 'CaseFileOfficers')
      List<CaseFileOfficer>? caseFileOfficers,
      @JsonKey(name: 'CaseMaterial') List<dynamic>? caseMaterial,
      @JsonKey(name: 'CaseNotes') List<dynamic>? caseNotes,
      @JsonKey(name: 'CaseSummary') List<dynamic>? caseSummary,
      LeadOfficer? leadOfficer,
      Occurence? occurence});

  $LeadOfficerCopyWith<$Res>? get leadOfficer;
  $OccurenceCopyWith<$Res>? get occurence;
}

/// @nodoc
class _$OpenCasesCopyWithImpl<$Res, $Val extends OpenCases>
    implements $OpenCasesCopyWith<$Res> {
  _$OpenCasesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? available = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? occurenceId = freezed,
    Object? caseFileOfficers = freezed,
    Object? caseMaterial = freezed,
    Object? caseNotes = freezed,
    Object? caseSummary = freezed,
    Object? leadOfficer = freezed,
    Object? occurence = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      occurenceId: freezed == occurenceId
          ? _value.occurenceId
          : occurenceId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseFileOfficers: freezed == caseFileOfficers
          ? _value.caseFileOfficers
          : caseFileOfficers // ignore: cast_nullable_to_non_nullable
              as List<CaseFileOfficer>?,
      caseMaterial: freezed == caseMaterial
          ? _value.caseMaterial
          : caseMaterial // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      caseNotes: freezed == caseNotes
          ? _value.caseNotes
          : caseNotes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      caseSummary: freezed == caseSummary
          ? _value.caseSummary
          : caseSummary // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      leadOfficer: freezed == leadOfficer
          ? _value.leadOfficer
          : leadOfficer // ignore: cast_nullable_to_non_nullable
              as LeadOfficer?,
      occurence: freezed == occurence
          ? _value.occurence
          : occurence // ignore: cast_nullable_to_non_nullable
              as Occurence?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadOfficerCopyWith<$Res>? get leadOfficer {
    if (_value.leadOfficer == null) {
      return null;
    }

    return $LeadOfficerCopyWith<$Res>(_value.leadOfficer!, (value) {
      return _then(_value.copyWith(leadOfficer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OccurenceCopyWith<$Res>? get occurence {
    if (_value.occurence == null) {
      return null;
    }

    return $OccurenceCopyWith<$Res>(_value.occurence!, (value) {
      return _then(_value.copyWith(occurence: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenCasesImplCopyWith<$Res>
    implements $OpenCasesCopyWith<$Res> {
  factory _$$OpenCasesImplCopyWith(
          _$OpenCasesImpl value, $Res Function(_$OpenCasesImpl) then) =
      __$$OpenCasesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? available,
      int? userId,
      String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? occurenceId,
      @JsonKey(name: 'CaseFileOfficers')
      List<CaseFileOfficer>? caseFileOfficers,
      @JsonKey(name: 'CaseMaterial') List<dynamic>? caseMaterial,
      @JsonKey(name: 'CaseNotes') List<dynamic>? caseNotes,
      @JsonKey(name: 'CaseSummary') List<dynamic>? caseSummary,
      LeadOfficer? leadOfficer,
      Occurence? occurence});

  @override
  $LeadOfficerCopyWith<$Res>? get leadOfficer;
  @override
  $OccurenceCopyWith<$Res>? get occurence;
}

/// @nodoc
class __$$OpenCasesImplCopyWithImpl<$Res>
    extends _$OpenCasesCopyWithImpl<$Res, _$OpenCasesImpl>
    implements _$$OpenCasesImplCopyWith<$Res> {
  __$$OpenCasesImplCopyWithImpl(
      _$OpenCasesImpl _value, $Res Function(_$OpenCasesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? available = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? occurenceId = freezed,
    Object? caseFileOfficers = freezed,
    Object? caseMaterial = freezed,
    Object? caseNotes = freezed,
    Object? caseSummary = freezed,
    Object? leadOfficer = freezed,
    Object? occurence = freezed,
  }) {
    return _then(_$OpenCasesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      occurenceId: freezed == occurenceId
          ? _value.occurenceId
          : occurenceId // ignore: cast_nullable_to_non_nullable
              as int?,
      caseFileOfficers: freezed == caseFileOfficers
          ? _value._caseFileOfficers
          : caseFileOfficers // ignore: cast_nullable_to_non_nullable
              as List<CaseFileOfficer>?,
      caseMaterial: freezed == caseMaterial
          ? _value._caseMaterial
          : caseMaterial // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      caseNotes: freezed == caseNotes
          ? _value._caseNotes
          : caseNotes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      caseSummary: freezed == caseSummary
          ? _value._caseSummary
          : caseSummary // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      leadOfficer: freezed == leadOfficer
          ? _value.leadOfficer
          : leadOfficer // ignore: cast_nullable_to_non_nullable
              as LeadOfficer?,
      occurence: freezed == occurence
          ? _value.occurence
          : occurence // ignore: cast_nullable_to_non_nullable
              as Occurence?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenCasesImpl implements _OpenCases {
  _$OpenCasesImpl(
      {this.id,
      this.available,
      this.userId,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      this.occurenceId,
      @JsonKey(name: 'CaseFileOfficers')
      final List<CaseFileOfficer>? caseFileOfficers,
      @JsonKey(name: 'CaseMaterial') final List<dynamic>? caseMaterial,
      @JsonKey(name: 'CaseNotes') final List<dynamic>? caseNotes,
      @JsonKey(name: 'CaseSummary') final List<dynamic>? caseSummary,
      this.leadOfficer,
      this.occurence})
      : _caseFileOfficers = caseFileOfficers,
        _caseMaterial = caseMaterial,
        _caseNotes = caseNotes,
        _caseSummary = caseSummary;

  factory _$OpenCasesImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenCasesImplFromJson(json);

  @override
  final int? id;
  @override
  final bool? available;
  @override
  final int? userId;
  @override
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final int? occurenceId;
  final List<CaseFileOfficer>? _caseFileOfficers;
  @override
  @JsonKey(name: 'CaseFileOfficers')
  List<CaseFileOfficer>? get caseFileOfficers {
    final value = _caseFileOfficers;
    if (value == null) return null;
    if (_caseFileOfficers is EqualUnmodifiableListView)
      return _caseFileOfficers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _caseMaterial;
  @override
  @JsonKey(name: 'CaseMaterial')
  List<dynamic>? get caseMaterial {
    final value = _caseMaterial;
    if (value == null) return null;
    if (_caseMaterial is EqualUnmodifiableListView) return _caseMaterial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _caseNotes;
  @override
  @JsonKey(name: 'CaseNotes')
  List<dynamic>? get caseNotes {
    final value = _caseNotes;
    if (value == null) return null;
    if (_caseNotes is EqualUnmodifiableListView) return _caseNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _caseSummary;
  @override
  @JsonKey(name: 'CaseSummary')
  List<dynamic>? get caseSummary {
    final value = _caseSummary;
    if (value == null) return null;
    if (_caseSummary is EqualUnmodifiableListView) return _caseSummary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LeadOfficer? leadOfficer;
  @override
  final Occurence? occurence;

  @override
  String toString() {
    return 'OpenCases(id: $id, available: $available, userId: $userId, status: $status, createdAt: $createdAt, occurenceId: $occurenceId, caseFileOfficers: $caseFileOfficers, caseMaterial: $caseMaterial, caseNotes: $caseNotes, caseSummary: $caseSummary, leadOfficer: $leadOfficer, occurence: $occurence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenCasesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.occurenceId, occurenceId) ||
                other.occurenceId == occurenceId) &&
            const DeepCollectionEquality()
                .equals(other._caseFileOfficers, _caseFileOfficers) &&
            const DeepCollectionEquality()
                .equals(other._caseMaterial, _caseMaterial) &&
            const DeepCollectionEquality()
                .equals(other._caseNotes, _caseNotes) &&
            const DeepCollectionEquality()
                .equals(other._caseSummary, _caseSummary) &&
            (identical(other.leadOfficer, leadOfficer) ||
                other.leadOfficer == leadOfficer) &&
            (identical(other.occurence, occurence) ||
                other.occurence == occurence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      available,
      userId,
      status,
      createdAt,
      occurenceId,
      const DeepCollectionEquality().hash(_caseFileOfficers),
      const DeepCollectionEquality().hash(_caseMaterial),
      const DeepCollectionEquality().hash(_caseNotes),
      const DeepCollectionEquality().hash(_caseSummary),
      leadOfficer,
      occurence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenCasesImplCopyWith<_$OpenCasesImpl> get copyWith =>
      __$$OpenCasesImplCopyWithImpl<_$OpenCasesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenCasesImplToJson(
      this,
    );
  }
}

abstract class _OpenCases implements OpenCases {
  factory _OpenCases(
      {final int? id,
      final bool? available,
      final int? userId,
      final String? status,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? occurenceId,
      @JsonKey(name: 'CaseFileOfficers')
      final List<CaseFileOfficer>? caseFileOfficers,
      @JsonKey(name: 'CaseMaterial') final List<dynamic>? caseMaterial,
      @JsonKey(name: 'CaseNotes') final List<dynamic>? caseNotes,
      @JsonKey(name: 'CaseSummary') final List<dynamic>? caseSummary,
      final LeadOfficer? leadOfficer,
      final Occurence? occurence}) = _$OpenCasesImpl;

  factory _OpenCases.fromJson(Map<String, dynamic> json) =
      _$OpenCasesImpl.fromJson;

  @override
  int? get id;
  @override
  bool? get available;
  @override
  int? get userId;
  @override
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  int? get occurenceId;
  @override
  @JsonKey(name: 'CaseFileOfficers')
  List<CaseFileOfficer>? get caseFileOfficers;
  @override
  @JsonKey(name: 'CaseMaterial')
  List<dynamic>? get caseMaterial;
  @override
  @JsonKey(name: 'CaseNotes')
  List<dynamic>? get caseNotes;
  @override
  @JsonKey(name: 'CaseSummary')
  List<dynamic>? get caseSummary;
  @override
  LeadOfficer? get leadOfficer;
  @override
  Occurence? get occurence;
  @override
  @JsonKey(ignore: true)
  _$$OpenCasesImplCopyWith<_$OpenCasesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
