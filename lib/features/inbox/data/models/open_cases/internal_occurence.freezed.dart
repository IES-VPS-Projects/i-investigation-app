// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_occurence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InternalOccurence _$InternalOccurenceFromJson(Map<String, dynamic> json) {
  return _InternalOccurence.fromJson(json);
}

/// @nodoc
mixin _$InternalOccurence {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ob_no')
  String? get obNo => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  dynamic get narrative => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InternalOccurenceCopyWith<InternalOccurence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalOccurenceCopyWith<$Res> {
  factory $InternalOccurenceCopyWith(
          InternalOccurence value, $Res Function(InternalOccurence) then) =
      _$InternalOccurenceCopyWithImpl<$Res, InternalOccurence>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'ob_no') String? obNo,
      String? title,
      String? created_at,
      dynamic narrative});
}

/// @nodoc
class _$InternalOccurenceCopyWithImpl<$Res, $Val extends InternalOccurence>
    implements $InternalOccurenceCopyWith<$Res> {
  _$InternalOccurenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? obNo = freezed,
    Object? title = freezed,
    Object? created_at = freezed,
    Object? narrative = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      obNo: freezed == obNo
          ? _value.obNo
          : obNo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      narrative: freezed == narrative
          ? _value.narrative
          : narrative // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternalOccurenceImplCopyWith<$Res>
    implements $InternalOccurenceCopyWith<$Res> {
  factory _$$InternalOccurenceImplCopyWith(_$InternalOccurenceImpl value,
          $Res Function(_$InternalOccurenceImpl) then) =
      __$$InternalOccurenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'ob_no') String? obNo,
      String? title,
      String? created_at,
      dynamic narrative});
}

/// @nodoc
class __$$InternalOccurenceImplCopyWithImpl<$Res>
    extends _$InternalOccurenceCopyWithImpl<$Res, _$InternalOccurenceImpl>
    implements _$$InternalOccurenceImplCopyWith<$Res> {
  __$$InternalOccurenceImplCopyWithImpl(_$InternalOccurenceImpl _value,
      $Res Function(_$InternalOccurenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? obNo = freezed,
    Object? title = freezed,
    Object? created_at = freezed,
    Object? narrative = freezed,
  }) {
    return _then(_$InternalOccurenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      obNo: freezed == obNo
          ? _value.obNo
          : obNo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      narrative: freezed == narrative
          ? _value.narrative
          : narrative // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InternalOccurenceImpl implements _InternalOccurence {
  _$InternalOccurenceImpl(
      {this.id,
      @JsonKey(name: 'ob_no') this.obNo,
      this.title,
      this.created_at,
      this.narrative});

  factory _$InternalOccurenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalOccurenceImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'ob_no')
  final String? obNo;
  @override
  final String? title;
  @override
  final String? created_at;
  @override
  final dynamic narrative;

  @override
  String toString() {
    return 'InternalOccurence(id: $id, obNo: $obNo, title: $title, created_at: $created_at, narrative: $narrative)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalOccurenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.obNo, obNo) || other.obNo == obNo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality().equals(other.narrative, narrative));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, obNo, title, created_at,
      const DeepCollectionEquality().hash(narrative));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalOccurenceImplCopyWith<_$InternalOccurenceImpl> get copyWith =>
      __$$InternalOccurenceImplCopyWithImpl<_$InternalOccurenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalOccurenceImplToJson(
      this,
    );
  }
}

abstract class _InternalOccurence implements InternalOccurence {
  factory _InternalOccurence(
      {final int? id,
      @JsonKey(name: 'ob_no') final String? obNo,
      final String? title,
      final String? created_at,
      final dynamic narrative}) = _$InternalOccurenceImpl;

  factory _InternalOccurence.fromJson(Map<String, dynamic> json) =
      _$InternalOccurenceImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'ob_no')
  String? get obNo;
  @override
  String? get title;
  @override
  String? get created_at;
  @override
  dynamic get narrative;
  @override
  @JsonKey(ignore: true)
  _$$InternalOccurenceImplCopyWith<_$InternalOccurenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
