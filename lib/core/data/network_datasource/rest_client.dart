import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter/foundation.dart';

import '../../utilities/logging_utils.dart';
import '../datasources/local_storage_data_source.dart';
import 'config.dart';

class RestClient {
  late Dio _dio;
  Dio get dio => _dio;

  RestClient() {
    _dio = create();
    logger.i("REST CLIENT INIT]");
  }

  Dio create() {
    Dio _dio = Dio();

    kDebugMode ? _dio.interceptors.add(HttpFormatter()) : null;
    _dio.options.headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };
    _dio.options.headers.addAll({
      'Content-Type': 'application/x-www-form-urlencoded',
    });
    _dio.options.baseUrl = BASE_URL;
    _dio.interceptors
      ..add(InterceptorsWrapper(onRequest: (options, handler) async {
        if (options.extra['token-required'] == true) {
          var token = await getData('token');
          options.headers.addAll({
            "Authorization": "Bearer ${token}",
          });
        }
        return handler.next(options);
      }));

    return _dio;
  }
}
