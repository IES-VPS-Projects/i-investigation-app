// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_file_officer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaseFileOfficer _$CaseFileOfficerFromJson(Map<String, dynamic> json) {
  return _CaseFileOfficer.fromJson(json);
}

/// @nodoc
mixin _$CaseFileOfficer {
  int? get id => throw _privateConstructorUsedError;
  int? get caseFileId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseFileOfficerCopyWith<CaseFileOfficer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseFileOfficerCopyWith<$Res> {
  factory $CaseFileOfficerCopyWith(
          CaseFileOfficer value, $Res Function(CaseFileOfficer) then) =
      _$CaseFileOfficerCopyWithImpl<$Res, CaseFileOfficer>;
  @useResult
  $Res call({int? id, int? caseFileId, int? userId, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CaseFileOfficerCopyWithImpl<$Res, $Val extends CaseFileOfficer>
    implements $CaseFileOfficerCopyWith<$Res> {
  _$CaseFileOfficerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? caseFileId = freezed,
    Object? userId = freezed,
    Object? user = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CaseFileOfficerImplCopyWith<$Res>
    implements $CaseFileOfficerCopyWith<$Res> {
  factory _$$CaseFileOfficerImplCopyWith(_$CaseFileOfficerImpl value,
          $Res Function(_$CaseFileOfficerImpl) then) =
      __$$CaseFileOfficerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? caseFileId, int? userId, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CaseFileOfficerImplCopyWithImpl<$Res>
    extends _$CaseFileOfficerCopyWithImpl<$Res, _$CaseFileOfficerImpl>
    implements _$$CaseFileOfficerImplCopyWith<$Res> {
  __$$CaseFileOfficerImplCopyWithImpl(
      _$CaseFileOfficerImpl _value, $Res Function(_$CaseFileOfficerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? caseFileId = freezed,
    Object? userId = freezed,
    Object? user = freezed,
  }) {
    return _then(_$CaseFileOfficerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      caseFileId: freezed == caseFileId
          ? _value.caseFileId
          : caseFileId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseFileOfficerImpl implements _CaseFileOfficer {
  _$CaseFileOfficerImpl({this.id, this.caseFileId, this.userId, this.user});

  factory _$CaseFileOfficerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseFileOfficerImplFromJson(json);

  @override
  final int? id;
  @override
  final int? caseFileId;
  @override
  final int? userId;
  @override
  final User? user;

  @override
  String toString() {
    return 'CaseFileOfficer(id: $id, caseFileId: $caseFileId, userId: $userId, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseFileOfficerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.caseFileId, caseFileId) ||
                other.caseFileId == caseFileId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, caseFileId, userId, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseFileOfficerImplCopyWith<_$CaseFileOfficerImpl> get copyWith =>
      __$$CaseFileOfficerImplCopyWithImpl<_$CaseFileOfficerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseFileOfficerImplToJson(
      this,
    );
  }
}

abstract class _CaseFileOfficer implements CaseFileOfficer {
  factory _CaseFileOfficer(
      {final int? id,
      final int? caseFileId,
      final int? userId,
      final User? user}) = _$CaseFileOfficerImpl;

  factory _CaseFileOfficer.fromJson(Map<String, dynamic> json) =
      _$CaseFileOfficerImpl.fromJson;

  @override
  int? get id;
  @override
  int? get caseFileId;
  @override
  int? get userId;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$CaseFileOfficerImplCopyWith<_$CaseFileOfficerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
