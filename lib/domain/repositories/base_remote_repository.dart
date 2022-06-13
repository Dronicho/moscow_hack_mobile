import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/repositories/base_api.dart';

class BaseRemoteRepository<T> {
  final BaseApi<T> api = get();

  Future<T?> getModel(String id) async {
    try {
      final response = await api.get(id);
      if (response.isSuccess) {
        return response.data;
      }
      return null;
    } catch (_) {
      return null;
    }
  }
}
