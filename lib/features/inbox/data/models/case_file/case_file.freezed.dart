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
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

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
  $Res call({String? message, Data? data});

  $DataCopyWith<$Res>? get data;
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
abstract class _$$CaseFileImplCopyWith<$Res>
    implements $CaseFileCopyWith<$Res> {
  factory _$$CaseFileImplCopyWith(
          _$CaseFileImpl value, $Res Function(_$CaseFileImpl) then) =
      __$$CaseFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
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
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CaseFileImpl(
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
class _$CaseFileImpl implements _CaseFile {
  _$CaseFileImpl({this.message, this.data});

  factory _$CaseFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseFileImplFromJson(json);

  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CaseFile(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseFileImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

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
  factory _CaseFile({final String? message, final Data? data}) = _$CaseFileImpl;

  factory _CaseFile.fromJson(Map<String, dynamic> json) =
      _$CaseFileImpl.fromJson;

  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$CaseFileImplCopyWith<_$CaseFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
