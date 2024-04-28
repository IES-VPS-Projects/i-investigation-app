import 'package:freezed_annotation/freezed_annotation.dart';

part 'penalcode.freezed.dart';
part 'penalcode.g.dart';

@freezed
class Penalcode with _$Penalcode {
  factory Penalcode({
    int? id,
    String? penal,
    String? description,
  }) = _Penalcode;

  factory Penalcode.fromJson(Map<String, dynamic> json) =>
      _$PenalcodeFromJson(json);
}
