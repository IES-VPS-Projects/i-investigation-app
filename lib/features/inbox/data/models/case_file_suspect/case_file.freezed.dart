// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaseFile _$CaseFileFromJson(Map<String, dynamic> json) {
  return _CaseFile.fromJson(json);
}

/// @nodoc
mixin _$CaseFile {
  int? get id => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get occurenceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseFileCopyWith<CaseFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseFileCopyWith<$Res> {
  factory $CaseFileCopyWith(CaseFile value, $Res Function(CaseFile) then) =
      _$CaseFileCopyWithImpl<$Res, CaseFile>;
  @useResult
  $Res call(
      {int? id,
      bool? available,
      int? userId,
      String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? occurenceId});
}

/// @nodoc
class _$CaseFileCopyWithImpl<$Res, $Val extends CaseFile>
    implements $CaseFileCopyWith<$Res> {
  _$CaseFileCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaseFileImplCopyWith<$Res>
    implements $CaseFileCopyWith<$Res> {
  factory _$$CaseFileImplCopyWith(
          _$CaseFileImpl value, $Res Function(_$CaseFileImpl) then) =
      __$$CaseFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool? available,
      int? userId,
      String? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      int? occurenceId});
}

/// @nodoc
class __$$CaseFileImplCopyWithImpl<$Res>
    extends _$CaseFileCopyWithImpl<$Res, _$CaseFileImpl>
    implements _$$CaseFileImplCopyWith<$Res> {
  __$$CaseFileImplCopyWithImpl(
      _$CaseFileImpl _value, $Res Function(_$CaseFileImpl) _then)
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
  }) {
    return _then(_$CaseFileImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseFileImpl implements _CaseFile {
  _$CaseFileImpl(
      {this.id,
      this.available,
      this.userId,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      this.occurenceId});

  factory _$CaseFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseFileImplFromJson(json);

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

  @override
  String toString() {
    return 'CaseFile(id: $id, available: $available, userId: $userId, status: $status, createdAt: $createdAt, occurenceId: $occurenceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.occurenceId, occurenceId) ||
                other.occurenceId == occurenceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, available, userId, status, createdAt, occurenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseFileImplCopyWith<_$CaseFileImpl> get copyWith =>
      __$$CaseFileImplCopyWithImpl<_$CaseFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseFileImplToJson(
      this,
    );
  }
}

abstract class _CaseFile implements CaseFile {
  factory _CaseFile(
      {final int? id,
      final bool? available,
      final int? userId,
      final String? status,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final int? occurenceId}) = _$CaseFileImpl;

  factory _CaseFile.fromJson(Map<String, dynamic> json) =
      _$CaseFileImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$CaseFileImplCopyWith<_$CaseFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
