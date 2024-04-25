part of 'inbox_cubit.dart';

@freezed
abstract class InboxState with _$InboxState {
  const factory InboxState.initial({required InboxStatePayload payload}) =
      _InitialInboxState;
  const factory InboxState.loading({required InboxStatePayload payload}) =
      _LoadingInboxState;
  const factory InboxState.error({required InboxStatePayload payload}) =
      _ErrorInboxState;
  const factory InboxState.cases({required InboxStatePayload payload}) =
      _CasesInboxState;
}

@freezed
abstract class InboxStatePayload with _$InboxStatePayload {
  const factory InboxStatePayload(
      {@required String? error,
      @required int? page,
      List<OpenCases>? cases}) = _InboxStatePayload;

  factory InboxStatePayload.fromJson(Map<String, dynamic> json) =>
      _$InboxStatePayloadFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
