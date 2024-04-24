// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counties_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountiesModel _$CountiesModelFromJson(Map<String, dynamic> json) {
  return _CountiesModel.fromJson(json);
}

/// @nodoc
mixin _$CountiesModel {
  String? get name => throw _privateConstructorUsedError;
  String? get capital => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  List<String>? get sub_counties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountiesModelCopyWith<CountiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountiesModelCopyWith<$Res> {
  factory $CountiesModelCopyWith(
          CountiesModel value, $Res Function(CountiesModel) then) =
      _$CountiesModelCopyWithImpl<$Res, CountiesModel>;
  @useResult
  $Res call(
      {String? name, String? capital, int? code, List<String>? sub_counties});
}

/// @nodoc
class _$CountiesModelCopyWithImpl<$Res, $Val extends CountiesModel>
    implements $CountiesModelCopyWith<$Res> {
  _$CountiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? capital = freezed,
    Object? code = freezed,
    Object? sub_counties = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      capital: freezed == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      sub_counties: freezed == sub_counties
          ? _value.sub_counties
          : sub_counties // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountiesModelImplCopyWith<$Res>
    implements $CountiesModelCopyWith<$Res> {
  factory _$$CountiesModelImplCopyWith(
          _$CountiesModelImpl value, $Res Function(_$CountiesModelImpl) then) =
      __$$CountiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? capital, int? code, List<String>? sub_counties});
}

/// @nodoc
class __$$CountiesModelImplCopyWithImpl<$Res>
    extends _$CountiesModelCopyWithImpl<$Res, _$CountiesModelImpl>
    implements _$$CountiesModelImplCopyWith<$Res> {
  __$$CountiesModelImplCopyWithImpl(
      _$CountiesModelImpl _value, $Res Function(_$CountiesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? capital = freezed,
    Object? code = freezed,
    Object? sub_counties = freezed,
  }) {
    return _then(_$CountiesModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      capital: freezed == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      sub_counties: freezed == sub_counties
          ? _value._sub_counties
          : sub_counties // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountiesModelImpl implements _CountiesModel {
  const _$CountiesModelImpl(
      {this.name, this.capital, this.code, final List<String>? sub_counties})
      : _sub_counties = sub_counties;

  factory _$CountiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountiesModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? capital;
  @override
  final int? code;
  final List<String>? _sub_counties;
  @override
  List<String>? get sub_counties {
    final value = _sub_counties;
    if (value == null) return null;
    if (_sub_counties is EqualUnmodifiableListView) return _sub_counties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CountiesModel(name: $name, capital: $capital, code: $code, sub_counties: $sub_counties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountiesModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.capital, capital) || other.capital == capital) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality()
                .equals(other._sub_counties, _sub_counties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, capital, code,
      const DeepCollectionEquality().hash(_sub_counties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountiesModelImplCopyWith<_$CountiesModelImpl> get copyWith =>
      __$$CountiesModelImplCopyWithImpl<_$CountiesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountiesModelImplToJson(
      this,
    );
  }
}

abstract class _CountiesModel implements CountiesModel {
  const factory _CountiesModel(
      {final String? name,
      final String? capital,
      final int? code,
      final List<String>? sub_counties}) = _$CountiesModelImpl;

  factory _CountiesModel.fromJson(Map<String, dynamic> json) =
      _$CountiesModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get capital;
  @override
  int? get code;
  @override
  List<String>? get sub_counties;
  @override
  @JsonKey(ignore: true)
  _$$CountiesModelImplCopyWith<_$CountiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
