part of 'dcio_cubit.dart';

@freezed
abstract class DcioState with _$DcioState {
  const factory DcioState.initial({required DcioStatePayload payload}) =
      _InitialDcioState;
  const factory DcioState.loading({required DcioStatePayload payload}) =
      _LoadingDcioState;
  const factory DcioState.error({required DcioStatePayload payload}) =
      _ErrorDcioState;
  const factory DcioState.occurences({required DcioStatePayload payload}) =
      _OccurencesDcioState;
  const factory DcioState.casefile({required DcioStatePayload payload}) =
      _CasefileDcioState;
}

@freezed
abstract class DcioStatePayload with _$DcioStatePayload {
  const factory DcioStatePayload(
      {@required String? error,
      @required int? page,
      List<Occurence>? occurences,
      List<Users>? users,
      NewCaseFile? caseFile,
      @required List<Users>? officers}) = _DcioStatePayload;

  factory DcioStatePayload.fromJson(Map<String, dynamic> json) =>
      _$DcioStatePayloadFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
