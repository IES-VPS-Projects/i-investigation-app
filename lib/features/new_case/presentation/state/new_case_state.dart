part of 'new_case_cubit.dart';

@freezed
abstract class NewCaseState with _$NewCaseState {
  const factory NewCaseState.initial({required NewCaseStatePayload payload}) =
      _InitialNewCaseState;
  const factory NewCaseState.loading({required NewCaseStatePayload payload}) =
      _LoadingNewCaseState;
  const factory NewCaseState.createdCase(
      {required NewCaseStatePayload payload}) = _CreatedCaseNewCaseState;
  const factory NewCaseState.error({required NewCaseStatePayload payload}) =
      _ErrorState;
}

@freezed
abstract class NewCaseStatePayload with _$NewCaseStatePayload {
  const factory NewCaseStatePayload({
    @required String? error,
    @required int? page,
  }) = _NewCaseStatePayload;

  factory NewCaseStatePayload.fromJson(Map<String, dynamic> json) =>
      _$NewCaseStatePayloadFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
