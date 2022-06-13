import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:moscow_hack/domain/models/failure_result.dart';
import 'package:moscow_hack/domain/models/result.dart';

const _clientTimeoutSeconds = 30;

extension IsSuccessful on Response {
  bool get isSuccess => statusCode != null && statusCode! >= 200 && statusCode! < 300;
}

class BffRepository {
  Future<Result<T, FailureResult>> guardApiCall<T, TSource>({
    required Future<Response<TSource>> Function() invoker,
    FutureOr<T> Function(TSource)? mapper,
    FutureOr<T> Function(Response<TSource>)? responseMapper,
    Future<T> Function()? fallbackInvoker,
    Future<void> Function(T)? saveCacheInvoker,
    bool Function(int code, Headers headers, TSource? body)? fallbackValidator,
    T Function(Response<TSource> response)? fallbackMapper,
    T? defaultValue,
  }) async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult == ConnectivityResult.none && fallbackInvoker != null) {
        final fallbackResponse = await fallbackInvoker().timeout(const Duration(seconds: _clientTimeoutSeconds));

        return Result.success(fallbackResponse);
      }

      final response = await invoker().timeout(const Duration(seconds: _clientTimeoutSeconds));

      if (response.isSuccess) {
        final body = response.data;
        if (body != null && mapper != null) {
          final successResult = await mapper(body);
          await saveCacheInvoker?.call(successResult);

          return Result.success(successResult);
        } else if (responseMapper != null) {
          final successResult = await responseMapper(response);
          await saveCacheInvoker?.call(successResult);

          return Result.success(successResult);
        } else {
          return Result.success(defaultValue ?? null as T);
        }
      } else {
        return fallbackValidator != null &&
                fallbackValidator(
                  response.statusCode ?? 500,
                  response.headers,
                  response.data,
                ) &&
                fallbackMapper != null
            ? Result.success(fallbackMapper.call(response))
            : Result.failure(
                FailureResult(
                  reason: FailureReasons.unknown,
                  debugMessage: '${response.statusCode} on '
                      '${response.requestOptions} | '
                      'Body: ${response.data}',
                ),
              );
      }
    } on SocketException catch (ex) {
      return Result.failure(
        FailureResult(
          reason: FailureReasons.noInternetConnection,
          debugMessage: ex.toString(),
        ),
      );
    } on TimeoutException catch (ex) {
      return Result.failure(
        FailureResult(
          reason: FailureReasons.timeout,
          debugMessage: '${ex.toString()}\n Please check your VPN configuration.',
        ),
      );
    } on http.ClientException catch (ex) {
      return Result.failure(
        FailureResult(
          reason: FailureReasons.unknown,
          debugMessage: ex.toString(),
        ),
      );
    } on DioError catch (_) {
      return const Result.failure(
        FailureResult(
          reason: FailureReasons.unknown,
          debugMessage: '',
          // model: errorModel,
        ),
      );
    } catch (ex) {
      return Result.failure(
        FailureResult(
          reason: FailureReasons.unknown,
          debugMessage: ex.toString(),
        ),
      );
    }
  }
}
