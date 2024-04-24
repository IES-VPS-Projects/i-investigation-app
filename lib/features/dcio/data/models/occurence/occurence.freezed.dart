// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occurence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Occurence _$OccurenceFromJson(Map<String, dynamic> json) {
  return _Occurence.fromJson(json);
}

/// @nodoc
mixin _$Occurence {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ob_no')
  String? get obNo => throw _privateConstructorUsedError;
  String? get narrative => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  dynamic get lat => throw _privateConstructorUsedError;
  dynamic get long => throw _privateConstructorUsedError;
  String? get module => throw _privateConstructorUsedError;
  @JsonKey(name: 'report_timestamp')
  DateTime? get reportTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_complete')
  bool? get isComplete => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_closed')
  bool? get isClosed => throw _privateConstructorUsedError;
  @JsonKey(name: 'posted_date')
  DateTime? get postedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'penal_code')
  dynamic get penalCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ocs_action')
  dynamic get ocsAction => throw _privateConstructorUsedError;
  dynamic get policeStationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'OccurenceDetails')
  List<OccurenceDetail>? get occurenceDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'police_station')
  dynamic get policeStation => throw _privateConstructorUsedError;
  @JsonKey(name: 'CaseFile')
  List<dynamic>? get caseFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccurenceCopyWith<Occurence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccurenceCopyWith<$Res> {
  factory $OccurenceCopyWith(Occurence value, $Res Function(Occurence) then) =
      _$OccurenceCopyWithImpl<$Res, Occurence>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'ob_no') String? obNo,
      String? narrative,
      String? location,
      dynamic lat,
      dynamic long,
      String? module,
      @JsonKey(name: 'report_timestamp') DateTime? reportTimestamp,
      @JsonKey(name: 'is_complete') bool? isComplete,
      @JsonKey(name: 'is_closed') bool? isClosed,
      @JsonKey(name: 'posted_date') DateTime? postedDate,
      @JsonKey(name: 'penal_code') dynamic penalCode,
      @JsonKey(name: 'ocs_action') dynamic ocsAction,
      dynamic policeStationId,
      @JsonKey(name: 'OccurenceDetails')
      List<OccurenceDetail>? occurenceDetails,
      @JsonKey(name: 'police_station') dynamic policeStation,
      @JsonKey(name: 'CaseFile') List<dynamic>? caseFile});
}

/// @nodoc
class _$OccurenceCopyWithImpl<$Res, $Val extends Occurence>
    implements $OccurenceCopyWith<$Res> {
  _$OccurenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? obNo = freezed,
    Object? narrative = freezed,
    Object? location = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? module = freezed,
    Object? reportTimestamp = freezed,
    Object? isComplete = freezed,
    Object? isClosed = freezed,
    Object? postedDate = freezed,
    Object? penalCode = freezed,
    Object? ocsAction = freezed,
    Object? policeStationId = freezed,
    Object? occurenceDetails = freezed,
    Object? policeStation = freezed,
    Object? caseFile = freezed,
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
      narrative: freezed == narrative
          ? _value.narrative
          : narrative // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as dynamic,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      reportTimestamp: freezed == reportTimestamp
          ? _value.reportTimestamp
          : reportTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      postedDate: freezed == postedDate
          ? _value.postedDate
          : postedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      penalCode: freezed == penalCode
          ? _value.penalCode
          : penalCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ocsAction: freezed == ocsAction
          ? _value.ocsAction
          : ocsAction // ignore: cast_nullable_to_non_nullable
              as dynamic,
      policeStationId: freezed == policeStationId
          ? _value.policeStationId
          : policeStationId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      occurenceDetails: freezed == occurenceDetails
          ? _value.occurenceDetails
          : occurenceDetails // ignore: cast_nullable_to_non_nullable
              as List<OccurenceDetail>?,
      policeStation: freezed == policeStation
          ? _value.policeStation
          : policeStation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caseFile: freezed == caseFile
          ? _value.caseFile
          : caseFile // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccurenceImplCopyWith<$Res>
    implements $OccurenceCopyWith<$Res> {
  factory _$$OccurenceImplCopyWith(
          _$OccurenceImpl value, $Res Function(_$OccurenceImpl) then) =
      __$$OccurenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'ob_no') String? obNo,
      String? narrative,
      String? location,
      dynamic lat,
      dynamic long,
      String? module,
      @JsonKey(name: 'report_timestamp') DateTime? reportTimestamp,
      @JsonKey(name: 'is_complete') bool? isComplete,
      @JsonKey(name: 'is_closed') bool? isClosed,
      @JsonKey(name: 'posted_date') DateTime? postedDate,
      @JsonKey(name: 'penal_code') dynamic penalCode,
      @JsonKey(name: 'ocs_action') dynamic ocsAction,
      dynamic policeStationId,
      @JsonKey(name: 'OccurenceDetails')
      List<OccurenceDetail>? occurenceDetails,
      @JsonKey(name: 'police_station') dynamic policeStation,
      @JsonKey(name: 'CaseFile') List<dynamic>? caseFile});
}

/// @nodoc
class __$$OccurenceImplCopyWithImpl<$Res>
    extends _$OccurenceCopyWithImpl<$Res, _$OccurenceImpl>
    implements _$$OccurenceImplCopyWith<$Res> {
  __$$OccurenceImplCopyWithImpl(
      _$OccurenceImpl _value, $Res Function(_$OccurenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? obNo = freezed,
    Object? narrative = freezed,
    Object? location = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? module = freezed,
    Object? reportTimestamp = freezed,
    Object? isComplete = freezed,
    Object? isClosed = freezed,
    Object? postedDate = freezed,
    Object? penalCode = freezed,
    Object? ocsAction = freezed,
    Object? policeStationId = freezed,
    Object? occurenceDetails = freezed,
    Object? policeStation = freezed,
    Object? caseFile = freezed,
  }) {
    return _then(_$OccurenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      obNo: freezed == obNo
          ? _value.obNo
          : obNo // ignore: cast_nullable_to_non_nullable
              as String?,
      narrative: freezed == narrative
          ? _value.narrative
          : narrative // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as dynamic,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as String?,
      reportTimestamp: freezed == reportTimestamp
          ? _value.reportTimestamp
          : reportTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      postedDate: freezed == postedDate
          ? _value.postedDate
          : postedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      penalCode: freezed == penalCode
          ? _value.penalCode
          : penalCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ocsAction: freezed == ocsAction
          ? _value.ocsAction
          : ocsAction // ignore: cast_nullable_to_non_nullable
              as dynamic,
      policeStationId: freezed == policeStationId
          ? _value.policeStationId
          : policeStationId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      occurenceDetails: freezed == occurenceDetails
          ? _value._occurenceDetails
          : occurenceDetails // ignore: cast_nullable_to_non_nullable
              as List<OccurenceDetail>?,
      policeStation: freezed == policeStation
          ? _value.policeStation
          : policeStation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      caseFile: freezed == caseFile
          ? _value._caseFile
          : caseFile // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OccurenceImpl implements _Occurence {
  _$OccurenceImpl(
      {this.id,
      @JsonKey(name: 'ob_no') this.obNo,
      this.narrative,
      this.location,
      this.lat,
      this.long,
      this.module,
      @JsonKey(name: 'report_timestamp') this.reportTimestamp,
      @JsonKey(name: 'is_complete') this.isComplete,
      @JsonKey(name: 'is_closed') this.isClosed,
      @JsonKey(name: 'posted_date') this.postedDate,
      @JsonKey(name: 'penal_code') this.penalCode,
      @JsonKey(name: 'ocs_action') this.ocsAction,
      this.policeStationId,
      @JsonKey(name: 'OccurenceDetails')
      final List<OccurenceDetail>? occurenceDetails,
      @JsonKey(name: 'police_station') this.policeStation,
      @JsonKey(name: 'CaseFile') final List<dynamic>? caseFile})
      : _occurenceDetails = occurenceDetails,
        _caseFile = caseFile;

  factory _$OccurenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OccurenceImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'ob_no')
  final String? obNo;
  @override
  final String? narrative;
  @override
  final String? location;
  @override
  final dynamic lat;
  @override
  final dynamic long;
  @override
  final String? module;
  @override
  @JsonKey(name: 'report_timestamp')
  final DateTime? reportTimestamp;
  @override
  @JsonKey(name: 'is_complete')
  final bool? isComplete;
  @override
  @JsonKey(name: 'is_closed')
  final bool? isClosed;
  @override
  @JsonKey(name: 'posted_date')
  final DateTime? postedDate;
  @override
  @JsonKey(name: 'penal_code')
  final dynamic penalCode;
  @override
  @JsonKey(name: 'ocs_action')
  final dynamic ocsAction;
  @override
  final dynamic policeStationId;
  final List<OccurenceDetail>? _occurenceDetails;
  @override
  @JsonKey(name: 'OccurenceDetails')
  List<OccurenceDetail>? get occurenceDetails {
    final value = _occurenceDetails;
    if (value == null) return null;
    if (_occurenceDetails is EqualUnmodifiableListView)
      return _occurenceDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'police_station')
  final dynamic policeStation;
  final List<dynamic>? _caseFile;
  @override
  @JsonKey(name: 'CaseFile')
  List<dynamic>? get caseFile {
    final value = _caseFile;
    if (value == null) return null;
    if (_caseFile is EqualUnmodifiableListView) return _caseFile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Occurence(id: $id, obNo: $obNo, narrative: $narrative, location: $location, lat: $lat, long: $long, module: $module, reportTimestamp: $reportTimestamp, isComplete: $isComplete, isClosed: $isClosed, postedDate: $postedDate, penalCode: $penalCode, ocsAction: $ocsAction, policeStationId: $policeStationId, occurenceDetails: $occurenceDetails, policeStation: $policeStation, caseFile: $caseFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccurenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.obNo, obNo) || other.obNo == obNo) &&
            (identical(other.narrative, narrative) ||
                other.narrative == narrative) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long) &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.reportTimestamp, reportTimestamp) ||
                other.reportTimestamp == reportTimestamp) &&
            (identical(other.isComplete, isComplete) ||
                other.isComplete == isComplete) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed) &&
            (identical(other.postedDate, postedDate) ||
                other.postedDate == postedDate) &&
            const DeepCollectionEquality().equals(other.penalCode, penalCode) &&
            const DeepCollectionEquality().equals(other.ocsAction, ocsAction) &&
            const DeepCollectionEquality()
                .equals(other.policeStationId, policeStationId) &&
            const DeepCollectionEquality()
                .equals(other._occurenceDetails, _occurenceDetails) &&
            const DeepCollectionEquality()
                .equals(other.policeStation, policeStation) &&
            const DeepCollectionEquality().equals(other._caseFile, _caseFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      obNo,
      narrative,
      location,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long),
      module,
      reportTimestamp,
      isComplete,
      isClosed,
      postedDate,
      const DeepCollectionEquality().hash(penalCode),
      const DeepCollectionEquality().hash(ocsAction),
      const DeepCollectionEquality().hash(policeStationId),
      const DeepCollectionEquality().hash(_occurenceDetails),
      const DeepCollectionEquality().hash(policeStation),
      const DeepCollectionEquality().hash(_caseFile));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccurenceImplCopyWith<_$OccurenceImpl> get copyWith =>
      __$$OccurenceImplCopyWithImpl<_$OccurenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OccurenceImplToJson(
      this,
    );
  }
}

abstract class _Occurence implements Occurence {
  factory _Occurence(
          {final int? id,
          @JsonKey(name: 'ob_no') final String? obNo,
          final String? narrative,
          final String? location,
          final dynamic lat,
          final dynamic long,
          final String? module,
          @JsonKey(name: 'report_timestamp') final DateTime? reportTimestamp,
          @JsonKey(name: 'is_complete') final bool? isComplete,
          @JsonKey(name: 'is_closed') final bool? isClosed,
          @JsonKey(name: 'posted_date') final DateTime? postedDate,
          @JsonKey(name: 'penal_code') final dynamic penalCode,
          @JsonKey(name: 'ocs_action') final dynamic ocsAction,
          final dynamic policeStationId,
          @JsonKey(name: 'OccurenceDetails')
          final List<OccurenceDetail>? occurenceDetails,
          @JsonKey(name: 'police_station') final dynamic policeStation,
          @JsonKey(name: 'CaseFile') final List<dynamic>? caseFile}) =
      _$OccurenceImpl;

  factory _Occurence.fromJson(Map<String, dynamic> json) =
      _$OccurenceImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'ob_no')
  String? get obNo;
  @override
  String? get narrative;
  @override
  String? get location;
  @override
  dynamic get lat;
  @override
  dynamic get long;
  @override
  String? get module;
  @override
  @JsonKey(name: 'report_timestamp')
  DateTime? get reportTimestamp;
  @override
  @JsonKey(name: 'is_complete')
  bool? get isComplete;
  @override
  @JsonKey(name: 'is_closed')
  bool? get isClosed;
  @override
  @JsonKey(name: 'posted_date')
  DateTime? get postedDate;
  @override
  @JsonKey(name: 'penal_code')
  dynamic get penalCode;
  @override
  @JsonKey(name: 'ocs_action')
  dynamic get ocsAction;
  @override
  dynamic get policeStationId;
  @override
  @JsonKey(name: 'OccurenceDetails')
  List<OccurenceDetail>? get occurenceDetails;
  @override
  @JsonKey(name: 'police_station')
  dynamic get policeStation;
  @override
  @JsonKey(name: 'CaseFile')
  List<dynamic>? get caseFile;
  @override
  @JsonKey(ignore: true)
  _$$OccurenceImplCopyWith<_$OccurenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
