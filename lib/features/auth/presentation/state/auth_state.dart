part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial({required AuthStatePayload payload}) =
      _InitialAuthState;
  const factory AuthState.loading({required AuthStatePayload payload}) =
      _LoadingAuthState;
  const factory AuthState.error({required AuthStatePayload payload}) =
      _ErrorAuthState;
  const factory AuthState.login({required AuthStatePayload payload}) =
      _LoginAuthState;
}

@freezed
abstract class AuthStatePayload with _$AuthStatePayload {
  const factory AuthStatePayload(
      {@required String? error,
      @required int? page,
      @required AuthResponseModel? user}) = _AuthStatePayload;

  factory AuthStatePayload.fromJson(Map<String, dynamic> json) =>
      _$AuthStatePayloadFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
