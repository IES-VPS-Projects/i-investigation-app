// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
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
  @JsonKey(name: 'CaseSummary')
  List<dynamic>? get caseSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'CaseMaterial')
  List<dynamic>? get caseMaterial => throw _privateConstructorUsedError;
  @JsonKey(name: 'CaseNotesSuspect')
  List<CaseNotesSuspect>? get caseNotesSuspect =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
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
      @JsonKey(name: 'CaseSummary') List<dynamic>? caseSummary,
      @JsonKey(name: 'CaseMaterial') List<dynamic>? caseMaterial,
      @JsonKey(name: 'CaseNotesSuspect')
      List<CaseNotesSuspect>? caseNotesSuspect});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

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
    Object? caseSummary = freezed,
    Object? caseMaterial = freezed,
    Object? caseNotesSuspect = freezed,
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
      caseSummary: freezed == caseSummary
          ? _value.caseSummary
          : caseSummary // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      caseMaterial: freezed == caseMaterial
          ? _value.caseMaterial
          : caseMaterial // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      caseNotesSuspect: freezed == caseNotesSuspect
          ? _value.caseNotesSuspect
          : caseNotesSuspect // ignore: cast_nullable_to_non_nullable
              as List<CaseNotesSuspect>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'CaseSummary') List<dynamic>? caseSummary,
      @JsonKey(name: 'CaseMaterial') List<dynamic>? caseMaterial,
      @JsonKey(name: 'CaseNotesSuspect')
      List<CaseNotesSuspect>? caseNotesSuspect});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
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
    Object? caseSummary = freezed,
    Object? caseMaterial = freezed,
    Object? caseNotesSuspect = freezed,
  }) {
    return _then(_$DataImpl(
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
      caseSummary: freezed == caseSummary
          ? _value._caseSummary
          : caseSummary // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      caseMaterial: freezed == caseMaterial
          ? _value._caseMaterial
          : caseMaterial // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      caseNotesSuspect: freezed == caseNotesSuspect
          ? _value._caseNotesSuspect
          : caseNotesSuspect // ignore: cast_nullable_to_non_nullable
              as List<CaseNotesSuspect>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {this.id,
      this.available,
      this.userId,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      this.occurenceId,
      @JsonKey(name: 'CaseFileOfficers')
      final List<CaseFileOfficer>? caseFileOfficers,
      @JsonKey(name: 'CaseSummary') final List<dynamic>? caseSummary,
      @JsonKey(name: 'CaseMaterial') final List<dynamic>? caseMaterial,
      @JsonKey(name: 'CaseNotesSuspect')
      final List<CaseNotesSuspect>? caseNotesSuspect})
      : _caseFileOfficers = caseFileOfficers,
        _caseSummary = caseSummary,
        _caseMaterial = caseMaterial,
        _caseNotesSuspect = caseNotesSuspect;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

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

  final List<CaseNotesSuspect>? _caseNotesSuspect;
  @override
  @JsonKey(name: 'CaseNotesSuspect')
  List<CaseNotesSuspect>? get caseNotesSuspect {
    final value = _caseNotesSuspect;
    if (value == null) return null;
    if (_caseNotesSuspect is EqualUnmodifiableListView)
      return _caseNotesSuspect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(id: $id, available: $available, userId: $userId, status: $status, createdAt: $createdAt, occurenceId: $occurenceId, caseFileOfficers: $caseFileOfficers, caseSummary: $caseSummary, caseMaterial: $caseMaterial, caseNotesSuspect: $caseNotesSuspect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
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
                .equals(other._caseSummary, _caseSummary) &&
            const DeepCollectionEquality()
                .equals(other._caseMaterial, _caseMaterial) &&
            const DeepCollectionEquality()
                .equals(other._caseNotesSuspect, _caseNotesSuspect));
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
      const DeepCollectionEquality().hash(_caseSummary),
      const DeepCollectionEquality().hash(_caseMaterial),
      const DeepCollectionEquality().hash(_caseNotesSuspect));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {final int? id,
      final bool? available,
      final int? userId,
      final String? status,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? occurenceId,
      @JsonKey(name: 'CaseFileOfficers')
      final List<CaseFileOfficer>? caseFileOfficers,
      @JsonKey(name: 'CaseSummary') final List<dynamic>? caseSummary,
      @JsonKey(name: 'CaseMaterial') final List<dynamic>? caseMaterial,
      @JsonKey(name: 'CaseNotesSuspect')
      final List<CaseNotesSuspect>? caseNotesSuspect}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

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
  @JsonKey(name: 'CaseSummary')
  List<dynamic>? get caseSummary;
  @override
  @JsonKey(name: 'CaseMaterial')
  List<dynamic>? get caseMaterial;
  @override
  @JsonKey(name: 'CaseNotesSuspect')
  List<CaseNotesSuspect>? get caseNotesSuspect;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
