import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/services/cached_service.dart';
import 'package:moscow_hack/utils/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  ApiClient._();

  static Future<Dio> instance() async {
    var dio = Dio()
      ..options = BaseOptions(
          baseUrl: AppConstants.baseUrl,
          connectTimeout: 15000,
          sendTimeout: 15000,
          receiveTimeout: 15000,
          contentType: 'application/json',
          headers: {
            'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:101.0) Gecko/20100101 Firefox/101.0'
          });

    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseHeader: true,
        ),
      );
    }

    dio.interceptors.addAll([
      AuthInterceptor(get()),
    ]);

    return dio;
  }
}

class AuthInterceptor extends Interceptor {
  final CacheService _cacheRepository;

  AuthInterceptor(this._cacheRepository);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = _cacheRepository.get<String>('access_token');
    options.headers.addAll({
      'Authorization': 'Bearer $token',
    });
    super.onRequest(options, handler);
  }
}
