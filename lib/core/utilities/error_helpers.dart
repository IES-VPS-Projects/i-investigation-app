import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';

import '../data/network_datasource/network_service_impl.dart';
import '../domain/usecase/failures.dart';
import '../platform/app_strings.dart';
import '../platform/connection_status.dart';
import 'logging_utils.dart';

/// Return a `UIError` with a human readable [message].
///
/// This is intended to be used in the Usecase `NetwokFailure` and `CacheFailure`
/// handlera, and [message] should be a human readable error messages,
/// so that the bloc layer that makes use of usecases can just propagate these errors
/// to the UI without needing to do any extra processing.
// ignore: prefer_expression_function_bodies
UIError getUIErrorFromUsecaseFailure(
        String message, dynamic exception, StackTrace stackTrace) =>
    UIError(message);

/// Return a `NetworkFailure` with a generic connection error message for
/// unhandled errors from Api requests or otherwise unknown errors.
/// Also prints the associated [exception], for debugging purposes.
///
/// This is intended to be used in the repository layer's `ApiFailure` catch block,
/// for all known and unknown errors originating from the RemoteDatasource, so that
/// the error may be also logged.
///
/// The named [*Msg] params may be used to customise the error message depending
/// on the error type. For example, `notFoundMsg` can be set to "User not found",
/// which is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
/// Also, you can set `anyMsg` to force all error messages no matter the type to
/// one custom message.
NetworkFailure getNetworkFailureFromApiFailure(
  ApiFailure exception,
  StackTrace stackTrace, {
  String? anyMsg,
  String? serverErrorMsg,
  String? badRequestMsg,
  String? notFoundMsg,
  String? unauthenticatedMsg,
  String? notPermittedMsg,
  String? validationFailedMsg,
  String? unknownMsg,
  String? failureMsg,
}) {
  String errorMessage;

  switch (exception.errorCode) {
    case ApiErrors.serverError:
      errorMessage = anyMsg ?? serverErrorMsg ?? AppStrings.apiExceptionMessage;
      break;
    case ApiErrors.badRequest:
      errorMessage = anyMsg ?? badRequestMsg ?? AppStrings.apiBadRequestMessage;
      break;
    case ApiErrors.notFound:
      errorMessage = anyMsg ?? notFoundMsg ?? AppStrings.apiNotFoundMessage;
      break;
    case ApiErrors.unauthenticated:
      errorMessage =
          anyMsg ?? unauthenticatedMsg ?? AppStrings.apiUnauthenticatedMessage;
      break;
    case ApiErrors.notPermitted:
      errorMessage =
          anyMsg ?? notPermittedMsg ?? AppStrings.apiNotPermittedMessage;
      break;
    case ApiErrors.validationFailed:
      errorMessage =
          anyMsg ?? validationFailedMsg ?? AppStrings.validationFailedMessage;
      break;
    case ApiErrors.unknown:
      errorMessage = anyMsg ?? unknownMsg ?? AppStrings.genericExceptionMessage;
      break;
    case ApiErrors.failure:
      errorMessage = anyMsg ?? failureMsg ?? AppStrings.genericExceptionMessage;
      break;
    case ApiErrors.noInternet:
      errorMessage = AppStrings.noInternetMessage;
      break;
  }
  logger.e("error ios login ----- ${exception.message}");

  if (exception.message.contains('host lookup')) {
    ConnectionStatusSingleton.getInstance().checkConnection();
    return NetworkFailure(AppStrings.connectionTimeOut);
  }

  return NetworkFailure(errorMessage);
}

/// Intended for use in the remote datasource layer. Provide [source] as
/// method name and [message] as the error string directly from
/// the api. The repository layer should listen specifically for
/// `ApiFailure`s, and handle the errors based on the api error message,
/// e.g. `'not_found'`
Future<void> handleApiFailure(
    {required String source,
    required String errorMessage,
    required ApiErrors errorCode,
    Map<String, dynamic>? extraData,
    bool refreshTokenExpired = false,
    bool isReturnTypeVoid = false,
    required bool isOnlineStatus}) async {
  if (kDebugMode) {
    logger.e(
        'api: $source => $errorCode\t$errorMessage | extraData: ${extraData ?? ''}');
  }

  extraData = extraData ?? {};

  final isOnline = errorCode == ApiErrors.failure ? isOnlineStatus : true;

  if (isOnline) {
    logger.i("network $isOnline");
    logger.i("network $errorCode");
    if (errorCode == ApiErrors.validationFailed ||
        errorCode == ApiErrors.unauthenticated) {
      final _msgs = extraData.isEmpty
          ? [errorCode.name]
          : (extraData['errors'] as String).split(',').toList();
      errorMessage = _msgs.isNotEmpty ? _msgs.first : errorMessage;
    } else {
      errorMessage = sanitiseUnexplainedErrorMessage(errorMessage);
    }
  } else {
    errorCode = ApiErrors.noInternet;
  }

  throw ApiFailure(errorCode, errorMessage);
}

/// For unexplained error messages, we defaultly return a generic message to mask
/// potentially sensitive API [messages], while at the same time attempting to parse
/// the provided error message and reformat it in a way that is presentable to the
/// user.
String sanitiseUnexplainedErrorMessage(String error) {
  return error;
}

String getErrorMessage(err) {
  String message = '';
  try {
    String jsonString = err.toString().replaceAll('Exception: ', '');
    Map e = jsonDecode(jsonString);
    e.forEach((key, value) {
      if (value is List) {
        value.forEach((element) {
          message += '$element ';
        });
      } else {
        message += '$value ';
      }
    });
  } catch (e) {
    message = err.toString().replaceAll('Exception: ', '');
  }
  return message;
}
