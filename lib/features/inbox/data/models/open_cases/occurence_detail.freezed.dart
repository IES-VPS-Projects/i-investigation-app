// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occurence_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OccurenceDetail _$OccurenceDetailFromJson(Map<String, dynamic> json) {
  return _OccurenceDetail.fromJson(json);
}

/// @nodoc
mixin _$OccurenceDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  int? get occurenceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccurenceDetailCopyWith<OccurenceDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccurenceDetailCopyWith<$Res> {
  factory $OccurenceDetailCopyWith(
          OccurenceDetail value, $Res Function(OccurenceDetail) then) =
      _$OccurenceDetailCopyWithImpl<$Res, OccurenceDetail>;
  @useResult
  $Res call({int? id, String? details, int? occurenceId});
}

/// @nodoc
class _$OccurenceDetailCopyWithImpl<$Res, $Val extends OccurenceDetail>
    implements $OccurenceDetailCopyWith<$Res> {
  _$OccurenceDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? details = freezed,
    Object? occurenceId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      occurenceId: freezed == occurenceId
          ? _value.occurenceId
          : occurenceId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccurenceDetailImplCopyWith<$Res>
    implements $OccurenceDetailCopyWith<$Res> {
  factory _$$OccurenceDetailImplCopyWith(_$OccurenceDetailImpl value,
          $Res Function(_$OccurenceDetailImpl) then) =
      __$$OccurenceDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? details, int? occurenceId});
}

/// @nodoc
class __$$OccurenceDetailImplCopyWithImpl<$Res>
    extends _$OccurenceDetailCopyWithImpl<$Res, _$OccurenceDetailImpl>
    implements _$$OccurenceDetailImplCopyWith<$Res> {
  __$$OccurenceDetailImplCopyWithImpl(
      _$OccurenceDetailImpl _value, $Res Function(_$OccurenceDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? details = freezed,
    Object? occurenceId = freezed,
  }) {
    return _then(_$OccurenceDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      occurenceId: freezed == occurenceId
          ? _value.occurenceId
          : occurenceId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OccurenceDetailImpl implements _OccurenceDetail {
  _$OccurenceDetailImpl({this.id, this.details, this.occurenceId});

  factory _$OccurenceDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$OccurenceDetailImplFromJson(json);

  @override
  final int? id;
  @override
  final String? details;
  @override
  final int? occurenceId;

  @override
  String toString() {
    return 'OccurenceDetail(id: $id, details: $details, occurenceId: $occurenceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccurenceDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.occurenceId, occurenceId) ||
                other.occurenceId == occurenceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, details, occurenceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccurenceDetailImplCopyWith<_$OccurenceDetailImpl> get copyWith =>
      __$$OccurenceDetailImplCopyWithImpl<_$OccurenceDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OccurenceDetailImplToJson(
      this,
    );
  }
}

abstract class _OccurenceDetail implements OccurenceDetail {
  factory _OccurenceDetail(
      {final int? id,
      final String? details,
      final int? occurenceId}) = _$OccurenceDetailImpl;

  factory _OccurenceDetail.fromJson(Map<String, dynamic> json) =
      _$OccurenceDetailImpl.fromJson;

  @override
  int? get id;
  @override
  String? get details;
  @override
  int? get occurenceId;
  @override
  @JsonKey(ignore: true)
  _$$OccurenceDetailImplCopyWith<_$OccurenceDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
