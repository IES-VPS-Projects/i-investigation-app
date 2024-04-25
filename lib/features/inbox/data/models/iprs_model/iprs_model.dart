import 'package:freezed_annotation/freezed_annotation.dart';

part 'iprs_model.freezed.dart';
part 'iprs_model.g.dart';

@freezed
class IprsModel with _$IprsModel {
  factory IprsModel({
    int? id,
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
    @JsonKey(name: 'mug_shot') dynamic mugShot,
  }) = _IprsModel;

  factory IprsModel.fromJson(Map<String, dynamic> json) =>
      _$IprsModelFromJson(json);
}
