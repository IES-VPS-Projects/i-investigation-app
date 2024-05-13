
part of 'socket_cubit.dart';
@freezed
abstract class SocketState with _$SocketState {
  const factory SocketState.initial({required SocketStatePayload payload}) =
      _InitialSocketState;
  const factory SocketState.loading({required SocketStatePayload payload}) =
      _LoadingSocketState;
  const factory SocketState.error({required SocketStatePayload payload}) =
      _ErrorSocketState;
  const factory SocketState.occurences({required SocketStatePayload payload}) =
      _OccurencesSocketState;
  const factory SocketState.casefile({required SocketStatePayload payload}) =
      _CasefileSocketState;
}

@freezed
abstract class SocketStatePayload with _$SocketStatePayload {
  const factory SocketStatePayload(
      {@required String? error,
       }) = _SocketStatePayload;

  factory SocketStatePayload.fromJson(Map<String, dynamic> json) =>
      _$SocketStatePayloadFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}