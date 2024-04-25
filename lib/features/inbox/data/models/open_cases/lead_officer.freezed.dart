// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_officer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeadOfficer _$LeadOfficerFromJson(Map<String, dynamic> json) {
  return _LeadOfficer.fromJson(json);
}

/// @nodoc
mixin _$LeadOfficer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_number')
  String? get serviceNumber => throw _privateConstructorUsedError;
  dynamic get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'onetime_password')
  String? get onetimePassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_pic')
  dynamic get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get caseFileOfficersId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadOfficerCopyWith<LeadOfficer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadOfficerCopyWith<$Res> {
  factory $LeadOfficerCopyWith(
          LeadOfficer value, $Res Function(LeadOfficer) then) =
      _$LeadOfficerCopyWithImpl<$Res, LeadOfficer>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'service_number') String? serviceNumber,
      dynamic password,
      @JsonKey(name: 'onetime_password') String? onetimePassword,
      @JsonKey(name: 'profile_pic') dynamic profilePic,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      dynamic caseFileOfficersId});
}

/// @nodoc
class _$LeadOfficerCopyWithImpl<$Res, $Val extends LeadOfficer>
    implements $LeadOfficerCopyWith<$Res> {
  _$LeadOfficerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serviceNumber = freezed,
    Object? password = freezed,
    Object? onetimePassword = freezed,
    Object? profilePic = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? caseFileOfficersId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onetimePassword: freezed == onetimePassword
          ? _value.onetimePassword
          : onetimePassword // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      caseFileOfficersId: freezed == caseFileOfficersId
          ? _value.caseFileOfficersId
          : caseFileOfficersId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadOfficerImplCopyWith<$Res>
    implements $LeadOfficerCopyWith<$Res> {
  factory _$$LeadOfficerImplCopyWith(
          _$LeadOfficerImpl value, $Res Function(_$LeadOfficerImpl) then) =
      __$$LeadOfficerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'service_number') String? serviceNumber,
      dynamic password,
      @JsonKey(name: 'onetime_password') String? onetimePassword,
      @JsonKey(name: 'profile_pic') dynamic profilePic,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      dynamic caseFileOfficersId});
}

/// @nodoc
class __$$LeadOfficerImplCopyWithImpl<$Res>
    extends _$LeadOfficerCopyWithImpl<$Res, _$LeadOfficerImpl>
    implements _$$LeadOfficerImplCopyWith<$Res> {
  __$$LeadOfficerImplCopyWithImpl(
      _$LeadOfficerImpl _value, $Res Function(_$LeadOfficerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serviceNumber = freezed,
    Object? password = freezed,
    Object? onetimePassword = freezed,
    Object? profilePic = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? caseFileOfficersId = freezed,
  }) {
    return _then(_$LeadOfficerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceNumber: freezed == serviceNumber
          ? _value.serviceNumber
          : serviceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onetimePassword: freezed == onetimePassword
          ? _value.onetimePassword
          : onetimePassword // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      caseFileOfficersId: freezed == caseFileOfficersId
          ? _value.caseFileOfficersId
          : caseFileOfficersId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadOfficerImpl implements _LeadOfficer {
  _$LeadOfficerImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'service_number') this.serviceNumber,
      this.password,
      @JsonKey(name: 'onetime_password') this.onetimePassword,
      @JsonKey(name: 'profile_pic') this.profilePic,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.caseFileOfficersId});

  factory _$LeadOfficerImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadOfficerImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'service_number')
  final String? serviceNumber;
  @override
  final dynamic password;
  @override
  @JsonKey(name: 'onetime_password')
  final String? onetimePassword;
  @override
  @JsonKey(name: 'profile_pic')
  final dynamic profilePic;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final dynamic caseFileOfficersId;

  @override
  String toString() {
    return 'LeadOfficer(id: $id, name: $name, serviceNumber: $serviceNumber, password: $password, onetimePassword: $onetimePassword, profilePic: $profilePic, createdAt: $createdAt, updatedAt: $updatedAt, caseFileOfficersId: $caseFileOfficersId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadOfficerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serviceNumber, serviceNumber) ||
                other.serviceNumber == serviceNumber) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            (identical(other.onetimePassword, onetimePassword) ||
                other.onetimePassword == onetimePassword) &&
            const DeepCollectionEquality()
                .equals(other.profilePic, profilePic) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.caseFileOfficersId, caseFileOfficersId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      serviceNumber,
      const DeepCollectionEquality().hash(password),
      onetimePassword,
      const DeepCollectionEquality().hash(profilePic),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(caseFileOfficersId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadOfficerImplCopyWith<_$LeadOfficerImpl> get copyWith =>
      __$$LeadOfficerImplCopyWithImpl<_$LeadOfficerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadOfficerImplToJson(
      this,
    );
  }
}

abstract class _LeadOfficer implements LeadOfficer {
  factory _LeadOfficer(
      {final int? id,
      final String? name,
      @JsonKey(name: 'service_number') final String? serviceNumber,
      final dynamic password,
      @JsonKey(name: 'onetime_password') final String? onetimePassword,
      @JsonKey(name: 'profile_pic') final dynamic profilePic,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final dynamic caseFileOfficersId}) = _$LeadOfficerImpl;

  factory _LeadOfficer.fromJson(Map<String, dynamic> json) =
      _$LeadOfficerImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'service_number')
  String? get serviceNumber;
  @override
  dynamic get password;
  @override
  @JsonKey(name: 'onetime_password')
  String? get onetimePassword;
  @override
  @JsonKey(name: 'profile_pic')
  dynamic get profilePic;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  dynamic get caseFileOfficersId;
  @override
  @JsonKey(ignore: true)
  _$$LeadOfficerImplCopyWith<_$LeadOfficerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
