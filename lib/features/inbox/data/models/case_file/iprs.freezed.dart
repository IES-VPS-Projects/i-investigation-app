// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iprs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Iprs _$IprsFromJson(Map<String, dynamic> json) {
  return _Iprs.fromJson(json);
}

/// @nodoc
mixin _$Iprs {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_no')
  String? get idNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'passport_no')
  dynamic get passportNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_name')
  String? get middleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'county_of_birth')
  dynamic get countyOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_of_birth')
  String? get districtOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'division_of_birth')
  dynamic get divisionOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_of_birth')
  dynamic get locationOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'mug_shot')
  dynamic get mugShot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IprsCopyWith<Iprs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IprsCopyWith<$Res> {
  factory $IprsCopyWith(Iprs value, $Res Function(Iprs) then) =
      _$IprsCopyWithImpl<$Res, Iprs>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'id_no') String? idNo,
      @JsonKey(name: 'passport_no') dynamic passportNo,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'middle_name') String? middleName,
      @JsonKey(name: 'last_name') String? lastName,
      String? gender,
      String? nationality,
      @JsonKey(name: 'county_of_birth') dynamic countyOfBirth,
      @JsonKey(name: 'district_of_birth') String? districtOfBirth,
      @JsonKey(name: 'division_of_birth') dynamic divisionOfBirth,
      @JsonKey(name: 'location_of_birth') dynamic locationOfBirth,
      @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
      @JsonKey(name: 'mug_shot') dynamic mugShot});
}

/// @nodoc
class _$IprsCopyWithImpl<$Res, $Val extends Iprs>
    implements $IprsCopyWith<$Res> {
  _$IprsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idNo = freezed,
    Object? passportNo = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
    Object? countyOfBirth = freezed,
    Object? districtOfBirth = freezed,
    Object? divisionOfBirth = freezed,
    Object? locationOfBirth = freezed,
    Object? dateOfBirth = freezed,
    Object? mugShot = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idNo: freezed == idNo
          ? _value.idNo
          : idNo // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNo: freezed == passportNo
          ? _value.passportNo
          : passportNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      countyOfBirth: freezed == countyOfBirth
          ? _value.countyOfBirth
          : countyOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      districtOfBirth: freezed == districtOfBirth
          ? _value.districtOfBirth
          : districtOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      divisionOfBirth: freezed == divisionOfBirth
          ? _value.divisionOfBirth
          : divisionOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationOfBirth: freezed == locationOfBirth
          ? _value.locationOfBirth
          : locationOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mugShot: freezed == mugShot
          ? _value.mugShot
          : mugShot // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IprsImplCopyWith<$Res> implements $IprsCopyWith<$Res> {
  factory _$$IprsImplCopyWith(
          _$IprsImpl value, $Res Function(_$IprsImpl) then) =
      __$$IprsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'id_no') String? idNo,
      @JsonKey(name: 'passport_no') dynamic passportNo,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'middle_name') String? middleName,
      @JsonKey(name: 'last_name') String? lastName,
      String? gender,
      String? nationality,
      @JsonKey(name: 'county_of_birth') dynamic countyOfBirth,
      @JsonKey(name: 'district_of_birth') String? districtOfBirth,
      @JsonKey(name: 'division_of_birth') dynamic divisionOfBirth,
      @JsonKey(name: 'location_of_birth') dynamic locationOfBirth,
      @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
      @JsonKey(name: 'mug_shot') dynamic mugShot});
}

/// @nodoc
class __$$IprsImplCopyWithImpl<$Res>
    extends _$IprsCopyWithImpl<$Res, _$IprsImpl>
    implements _$$IprsImplCopyWith<$Res> {
  __$$IprsImplCopyWithImpl(_$IprsImpl _value, $Res Function(_$IprsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idNo = freezed,
    Object? passportNo = freezed,
    Object? firstName = freezed,
    Object? middleName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
    Object? countyOfBirth = freezed,
    Object? districtOfBirth = freezed,
    Object? divisionOfBirth = freezed,
    Object? locationOfBirth = freezed,
    Object? dateOfBirth = freezed,
    Object? mugShot = freezed,
  }) {
    return _then(_$IprsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idNo: freezed == idNo
          ? _value.idNo
          : idNo // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNo: freezed == passportNo
          ? _value.passportNo
          : passportNo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      countyOfBirth: freezed == countyOfBirth
          ? _value.countyOfBirth
          : countyOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      districtOfBirth: freezed == districtOfBirth
          ? _value.districtOfBirth
          : districtOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      divisionOfBirth: freezed == divisionOfBirth
          ? _value.divisionOfBirth
          : divisionOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationOfBirth: freezed == locationOfBirth
          ? _value.locationOfBirth
          : locationOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mugShot: freezed == mugShot
          ? _value.mugShot
          : mugShot // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IprsImpl implements _Iprs {
  _$IprsImpl(
      {this.id,
      @JsonKey(name: 'id_no') this.idNo,
      @JsonKey(name: 'passport_no') this.passportNo,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'middle_name') this.middleName,
      @JsonKey(name: 'last_name') this.lastName,
      this.gender,
      this.nationality,
      @JsonKey(name: 'county_of_birth') this.countyOfBirth,
      @JsonKey(name: 'district_of_birth') this.districtOfBirth,
      @JsonKey(name: 'division_of_birth') this.divisionOfBirth,
      @JsonKey(name: 'location_of_birth') this.locationOfBirth,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @JsonKey(name: 'mug_shot') this.mugShot});

  factory _$IprsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IprsImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_no')
  final String? idNo;
  @override
  @JsonKey(name: 'passport_no')
  final dynamic passportNo;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? gender;
  @override
  final String? nationality;
  @override
  @JsonKey(name: 'county_of_birth')
  final dynamic countyOfBirth;
  @override
  @JsonKey(name: 'district_of_birth')
  final String? districtOfBirth;
  @override
  @JsonKey(name: 'division_of_birth')
  final dynamic divisionOfBirth;
  @override
  @JsonKey(name: 'location_of_birth')
  final dynamic locationOfBirth;
  @override
  @JsonKey(name: 'date_of_birth')
  final DateTime? dateOfBirth;
  @override
  @JsonKey(name: 'mug_shot')
  final dynamic mugShot;

  @override
  String toString() {
    return 'Iprs(id: $id, idNo: $idNo, passportNo: $passportNo, firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, nationality: $nationality, countyOfBirth: $countyOfBirth, districtOfBirth: $districtOfBirth, divisionOfBirth: $divisionOfBirth, locationOfBirth: $locationOfBirth, dateOfBirth: $dateOfBirth, mugShot: $mugShot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IprsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idNo, idNo) || other.idNo == idNo) &&
            const DeepCollectionEquality()
                .equals(other.passportNo, passportNo) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            const DeepCollectionEquality()
                .equals(other.countyOfBirth, countyOfBirth) &&
            (identical(other.districtOfBirth, districtOfBirth) ||
                other.districtOfBirth == districtOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.divisionOfBirth, divisionOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.locationOfBirth, locationOfBirth) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality().equals(other.mugShot, mugShot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      idNo,
      const DeepCollectionEquality().hash(passportNo),
      firstName,
      middleName,
      lastName,
      gender,
      nationality,
      const DeepCollectionEquality().hash(countyOfBirth),
      districtOfBirth,
      const DeepCollectionEquality().hash(divisionOfBirth),
      const DeepCollectionEquality().hash(locationOfBirth),
      dateOfBirth,
      const DeepCollectionEquality().hash(mugShot));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IprsImplCopyWith<_$IprsImpl> get copyWith =>
      __$$IprsImplCopyWithImpl<_$IprsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IprsImplToJson(
      this,
    );
  }
}

abstract class _Iprs implements Iprs {
  factory _Iprs(
      {final int? id,
      @JsonKey(name: 'id_no') final String? idNo,
      @JsonKey(name: 'passport_no') final dynamic passportNo,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'middle_name') final String? middleName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? gender,
      final String? nationality,
      @JsonKey(name: 'county_of_birth') final dynamic countyOfBirth,
      @JsonKey(name: 'district_of_birth') final String? districtOfBirth,
      @JsonKey(name: 'division_of_birth') final dynamic divisionOfBirth,
      @JsonKey(name: 'location_of_birth') final dynamic locationOfBirth,
      @JsonKey(name: 'date_of_birth') final DateTime? dateOfBirth,
      @JsonKey(name: 'mug_shot') final dynamic mugShot}) = _$IprsImpl;

  factory _Iprs.fromJson(Map<String, dynamic> json) = _$IprsImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'id_no')
  String? get idNo;
  @override
  @JsonKey(name: 'passport_no')
  dynamic get passportNo;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'middle_name')
  String? get middleName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get gender;
  @override
  String? get nationality;
  @override
  @JsonKey(name: 'county_of_birth')
  dynamic get countyOfBirth;
  @override
  @JsonKey(name: 'district_of_birth')
  String? get districtOfBirth;
  @override
  @JsonKey(name: 'division_of_birth')
  dynamic get divisionOfBirth;
  @override
  @JsonKey(name: 'location_of_birth')
  dynamic get locationOfBirth;
  @override
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth;
  @override
  @JsonKey(name: 'mug_shot')
  dynamic get mugShot;
  @override
  @JsonKey(ignore: true)
  _$$IprsImplCopyWith<_$IprsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
