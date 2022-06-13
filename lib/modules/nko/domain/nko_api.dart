import 'package:dio/dio.dart';
import 'package:moscow_hack/domain/models/base_response.dart';
import 'package:moscow_hack/domain/repositories/base_api.dart';
import 'package:moscow_hack/modules/nko/domain/models/nko_model.dart';
import 'package:retrofit/retrofit.dart';

part 'nko_api.g.dart';

@RestApi()
abstract class NkoApi extends BaseApi<NkoModel> {
  factory NkoApi(Dio dio, {String baseUrl}) = _NkoApi;

  @GET('/nko/{id}')
  @override
  Future<BaseResponse<NkoModel, NkoModel>> get(@Path('id') String id);

  @GET('/nko?{query}')
  Future<BaseResponse<NkoModel, List<NkoModel>>> getAll(@Path('query') String query);

  @POST('/nko')
  Future<void> create(@Path() String id);
}
