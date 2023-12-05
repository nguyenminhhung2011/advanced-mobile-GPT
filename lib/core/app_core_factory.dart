import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:advanced_mobile_gpt/clean_architectures/data/data_source/local/preferences.dart';

class AppCoreFactory {
  static Dio createDio(String baseUrl) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {"content-type": "application/json", "Accept": "*/*"},
      ),
    )
      ..interceptors.add(TokenInterceptor())
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    if (!kIsWeb) {
      (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }
    return dio;
  }
}

class TokenInterceptor implements Interceptor {
  // final AuthApi _authApi = injector.get<AuthApi>();

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String accessToken = CommonAppSettingPref.getAccessToken();

    options.headers["Authorization"] = "Bearer $accessToken";
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }
}
