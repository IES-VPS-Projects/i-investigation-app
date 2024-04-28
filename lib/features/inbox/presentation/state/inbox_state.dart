part of 'inbox_cubit.dart';

@freezed
abstract class InboxState with _$InboxState {
  const factory InboxState.initial({required InboxStatePayload payload}) =
      _InitialInboxState;
  const factory InboxState.loading({required InboxStatePayload payload}) =
      _LoadingInboxState;
  const factory InboxState.createdSuspect(
      {required InboxStatePayload payload}) = _CreatedSuspectInboxState;
  const factory InboxState.errorIPRS({required InboxStatePayload payload}) =
      _ErrorIPRSInboxState;
  const factory InboxState.doneIPRS({required InboxStatePayload payload}) =
      _DoneIPRSInboxState;
  const factory InboxState.loadingIPRS({required InboxStatePayload payload}) =
      _LoadingIPRSInboxState;
  const factory InboxState.error({required InboxStatePayload payload}) =
      _ErrorInboxState;
  const factory InboxState.cases({required InboxStatePayload payload}) =
      _CasesInboxState;
  const factory InboxState.caseFile({required InboxStatePayload payload}) =
      _CaseFileInboxState;
}

@freezed
abstract class InboxStatePayload with _$InboxStatePayload {
  const factory InboxStatePayload(
      {@required String? error,
      @required int? page,
      List<OpenCases>? cases,
      CaseFile? caseFile,
      IprsModel? iprsModel,
      List<PenalCodeResponse>? penalCodes,
      String? recordingPath}) = _InboxStatePayload;

  factory InboxStatePayload.fromJson(Map<String, dynamic> json) =>
      _$InboxStatePayloadFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
