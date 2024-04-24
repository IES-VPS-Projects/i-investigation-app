part of 'dcio_cubit.dart';

@freezed
abstract class DcioState with _$DcioState {
  const factory DcioState.initial({required DcioStatePayload payload}) =
      _InitialDcioState;
  const factory DcioState.loading({required DcioStatePayload payload}) =
      _LoadingDcioState;
  const factory DcioState.error({required DcioStatePayload payload}) =
      _ErrorDcioState;
}

@freezed
abstract class DcioStatePayload with _$DcioStatePayload {
  const factory DcioStatePayload({
    @required String? error,
    @required int? page,
  }) = _DcioStatePayload;

  factory DcioStatePayload.fromJson(Map<String, dynamic> json) =>
      _$DcioStatePayloadFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
