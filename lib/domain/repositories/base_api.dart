import 'package:moscow_hack/domain/models/base_response.dart';

abstract class BaseApi<T> {
  Future<BaseResponse<T, T>> get(String id);
}
