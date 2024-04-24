import 'package:http_interceptor/http_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utilities/logging_utils.dart';

///logging interceptor for printing the calls log to console
class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData? data}) async {
    logger.i(
        'REQUEST: ${data?.method}\nPATH: ${data?.baseUrl}\nPARAMS: ${data?.params}\nHEADERS: ${data?.headers}\nBODY: ${data?.body}');

    return data!;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData? data}) async {
    logger.i(
        'RESPONSE: ${data?.method}\nPATH: ${data?.url}\nSTATUS CODE: ${data?.statusCode}\nHEADERS: ${data?.headers}\nBODY: ${data?.body}\nREQUEST: ${data?.request}');
    logger.i("END RESPONSE");
    return data!;
  }
}

class HeadersInterceptors implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    // Try reading data from the 'action' key. If it doesn't exist, returns null.
    // final String? action = prefs.getString('action');
    final String? token = prefs.getString("token");
    String authorization = "Token " + (token != null ? token : '');

    try {
      data.headers["Content-Type"] = "application/json";
      data.headers["Accept"] = "application/json";
      data.headers["Authorization"] = authorization;
    } catch (e) {
      logger.e(e);
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async =>
      data;
}
