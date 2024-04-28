// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_witness_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewWitnessResponse _$NewWitnessResponseFromJson(Map<String, dynamic> json) {
  return _NewWitnessResponse.fromJson(json);
}

/// @nodoc
mixin _$NewWitnessResponse {
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewWitnessResponseCopyWith<NewWitnessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewWitnessResponseCopyWith<$Res> {
  factory $NewWitnessResponseCopyWith(
          NewWitnessResponse value, $Res Function(NewWitnessResponse) then) =
      _$NewWitnessResponseCopyWithImpl<$Res, NewWitnessResponse>;
  @useResult
  $Res call({String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NewWitnessResponseCopyWithImpl<$Res, $Val extends NewWitnessResponse>
    implements $NewWitnessResponseCopyWith<$Res> {
  _$NewWitnessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewWitnessResponseImplCopyWith<$Res>
    implements $NewWitnessResponseCopyWith<$Res> {
  factory _$$NewWitnessResponseImplCopyWith(_$NewWitnessResponseImpl value,
          $Res Function(_$NewWitnessResponseImpl) then) =
      __$$NewWitnessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NewWitnessResponseImplCopyWithImpl<$Res>
    extends _$NewWitnessResponseCopyWithImpl<$Res, _$NewWitnessResponseImpl>
    implements _$$NewWitnessResponseImplCopyWith<$Res> {
  __$$NewWitnessResponseImplCopyWithImpl(_$NewWitnessResponseImpl _value,
      $Res Function(_$NewWitnessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NewWitnessResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewWitnessResponseImpl implements _NewWitnessResponse {
  _$NewWitnessResponseImpl({this.message, this.data});

  factory _$NewWitnessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewWitnessResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'NewWitnessResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewWitnessResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewWitnessResponseImplCopyWith<_$NewWitnessResponseImpl> get copyWith =>
      __$$NewWitnessResponseImplCopyWithImpl<_$NewWitnessResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewWitnessResponseImplToJson(
      this,
    );
  }
}

abstract class _NewWitnessResponse implements NewWitnessResponse {
  factory _NewWitnessResponse({final String? message, final Data? data}) =
      _$NewWitnessResponseImpl;

  factory _NewWitnessResponse.fromJson(Map<String, dynamic> json) =
      _$NewWitnessResponseImpl.fromJson;

  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$NewWitnessResponseImplCopyWith<_$NewWitnessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
