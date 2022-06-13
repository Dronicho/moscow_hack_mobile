import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_result.freezed.dart';

@freezed
class FailureResult with _$FailureResult implements Exception {
  const factory FailureResult({
    required FailureReasons reason,
    required String debugMessage,
    // ApiResponseFailureModel? model,
  }) = _FailureResult;

  @override
  String toString() {
    return debugMessage;
  }
}

// extension FailureResultErrorCode on FailureResult {
//   ErrorPresentationModel toPresentationModel() {
//     return ErrorPresentationModel.fromFailure(this);
//   }

//   ApiErrorCode get errorCode {
//     return model?.statusCode ?? ApiErrorCodeExtension.defaultValue;
//   }

//   String get message {
//     return model?.message ?? model?.message ?? debugMessage;
//   }
// }

enum FailureReasons {
  noInternetConnection,
  timeout,
  tokenExpired,
  unknown,
  storage,
}
