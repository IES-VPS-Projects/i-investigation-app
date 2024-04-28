// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'penal_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PenalCodeResponse _$PenalCodeResponseFromJson(Map<String, dynamic> json) {
  return _PenalCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$PenalCodeResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get penal => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PenalCodeResponseCopyWith<PenalCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenalCodeResponseCopyWith<$Res> {
  factory $PenalCodeResponseCopyWith(
          PenalCodeResponse value, $Res Function(PenalCodeResponse) then) =
      _$PenalCodeResponseCopyWithImpl<$Res, PenalCodeResponse>;
  @useResult
  $Res call({int? id, String? penal, String? description});
}

/// @nodoc
class _$PenalCodeResponseCopyWithImpl<$Res, $Val extends PenalCodeResponse>
    implements $PenalCodeResponseCopyWith<$Res> {
  _$PenalCodeResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$PenalCodeResponseImplCopyWith<$Res>
    implements $PenalCodeResponseCopyWith<$Res> {
  factory _$$PenalCodeResponseImplCopyWith(_$PenalCodeResponseImpl value,
          $Res Function(_$PenalCodeResponseImpl) then) =
      __$$PenalCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? penal, String? description});
}

/// @nodoc
class __$$PenalCodeResponseImplCopyWithImpl<$Res>
    extends _$PenalCodeResponseCopyWithImpl<$Res, _$PenalCodeResponseImpl>
    implements _$$PenalCodeResponseImplCopyWith<$Res> {
  __$$PenalCodeResponseImplCopyWithImpl(_$PenalCodeResponseImpl _value,
      $Res Function(_$PenalCodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? penal = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PenalCodeResponseImpl(
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
class _$PenalCodeResponseImpl implements _PenalCodeResponse {
  _$PenalCodeResponseImpl({this.id, this.penal, this.description});

  factory _$PenalCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PenalCodeResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? penal;
  @override
  final String? description;

  @override
  String toString() {
    return 'PenalCodeResponse(id: $id, penal: $penal, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenalCodeResponseImpl &&
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
  _$$PenalCodeResponseImplCopyWith<_$PenalCodeResponseImpl> get copyWith =>
      __$$PenalCodeResponseImplCopyWithImpl<_$PenalCodeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PenalCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _PenalCodeResponse implements PenalCodeResponse {
  factory _PenalCodeResponse(
      {final int? id,
      final String? penal,
      final String? description}) = _$PenalCodeResponseImpl;

  factory _PenalCodeResponse.fromJson(Map<String, dynamic> json) =
      _$PenalCodeResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get penal;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$PenalCodeResponseImplCopyWith<_$PenalCodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
