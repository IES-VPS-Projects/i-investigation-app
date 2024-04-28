// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'penalcode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Penalcode _$PenalcodeFromJson(Map<String, dynamic> json) {
  return _Penalcode.fromJson(json);
}

/// @nodoc
mixin _$Penalcode {
  int? get id => throw _privateConstructorUsedError;
  String? get penal => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PenalcodeCopyWith<Penalcode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenalcodeCopyWith<$Res> {
  factory $PenalcodeCopyWith(Penalcode value, $Res Function(Penalcode) then) =
      _$PenalcodeCopyWithImpl<$Res, Penalcode>;
  @useResult
  $Res call({int? id, String? penal, String? description});
}

/// @nodoc
class _$PenalcodeCopyWithImpl<$Res, $Val extends Penalcode>
    implements $PenalcodeCopyWith<$Res> {
  _$PenalcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? penal = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      penal: freezed == penal
          ? _value.penal
          : penal // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PenalcodeImplCopyWith<$Res>
    implements $PenalcodeCopyWith<$Res> {
  factory _$$PenalcodeImplCopyWith(
          _$PenalcodeImpl value, $Res Function(_$PenalcodeImpl) then) =
      __$$PenalcodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? penal, String? description});
}

/// @nodoc
class __$$PenalcodeImplCopyWithImpl<$Res>
    extends _$PenalcodeCopyWithImpl<$Res, _$PenalcodeImpl>
    implements _$$PenalcodeImplCopyWith<$Res> {
  __$$PenalcodeImplCopyWithImpl(
      _$PenalcodeImpl _value, $Res Function(_$PenalcodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? penal = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PenalcodeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      penal: freezed == penal
          ? _value.penal
          : penal // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PenalcodeImpl implements _Penalcode {
  _$PenalcodeImpl({this.id, this.penal, this.description});

  factory _$PenalcodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PenalcodeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? penal;
  @override
  final String? description;

  @override
  String toString() {
    return 'Penalcode(id: $id, penal: $penal, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenalcodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.penal, penal) || other.penal == penal) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, penal, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PenalcodeImplCopyWith<_$PenalcodeImpl> get copyWith =>
      __$$PenalcodeImplCopyWithImpl<_$PenalcodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PenalcodeImplToJson(
      this,
    );
  }
}

abstract class _Penalcode implements Penalcode {
  factory _Penalcode(
      {final int? id,
      final String? penal,
      final String? description}) = _$PenalcodeImpl;

  factory _Penalcode.fromJson(Map<String, dynamic> json) =
      _$PenalcodeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get penal;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$PenalcodeImplCopyWith<_$PenalcodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
