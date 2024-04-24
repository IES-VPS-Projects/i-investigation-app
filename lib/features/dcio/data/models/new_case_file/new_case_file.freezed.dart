// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_case_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewCaseFile _$NewCaseFileFromJson(Map<String, dynamic> json) {
  return _NewCaseFile.fromJson(json);
}

/// @nodoc
mixin _$NewCaseFile {
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewCaseFileCopyWith<NewCaseFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCaseFileCopyWith<$Res> {
  factory $NewCaseFileCopyWith(
          NewCaseFile value, $Res Function(NewCaseFile) then) =
      _$NewCaseFileCopyWithImpl<$Res, NewCaseFile>;
  @useResult
  $Res call({String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NewCaseFileCopyWithImpl<$Res, $Val extends NewCaseFile>
    implements $NewCaseFileCopyWith<$Res> {
  _$NewCaseFileCopyWithImpl(this._value, this._then);

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
abstract class _$$NewCaseFileImplCopyWith<$Res>
    implements $NewCaseFileCopyWith<$Res> {
  factory _$$NewCaseFileImplCopyWith(
          _$NewCaseFileImpl value, $Res Function(_$NewCaseFileImpl) then) =
      __$$NewCaseFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NewCaseFileImplCopyWithImpl<$Res>
    extends _$NewCaseFileCopyWithImpl<$Res, _$NewCaseFileImpl>
    implements _$$NewCaseFileImplCopyWith<$Res> {
  __$$NewCaseFileImplCopyWithImpl(
      _$NewCaseFileImpl _value, $Res Function(_$NewCaseFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NewCaseFileImpl(
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
class _$NewCaseFileImpl implements _NewCaseFile {
  _$NewCaseFileImpl({this.message, this.data});

  factory _$NewCaseFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewCaseFileImplFromJson(json);

  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'NewCaseFile(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewCaseFileImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewCaseFileImplCopyWith<_$NewCaseFileImpl> get copyWith =>
      __$$NewCaseFileImplCopyWithImpl<_$NewCaseFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewCaseFileImplToJson(
      this,
    );
  }
}

abstract class _NewCaseFile implements NewCaseFile {
  factory _NewCaseFile({final String? message, final Data? data}) =
      _$NewCaseFileImpl;

  factory _NewCaseFile.fromJson(Map<String, dynamic> json) =
      _$NewCaseFileImpl.fromJson;

  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$NewCaseFileImplCopyWith<_$NewCaseFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
