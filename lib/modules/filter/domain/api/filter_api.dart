import 'package:dio/dio.dart';
import 'package:moscow_hack/domain/models/base_response.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'filter_api.g.dart';

@RestApi()
abstract class FilterApi {
  factory FilterApi(Dio dio, {String baseUrl}) = _FilterApi;

  @GET('/projects/filters')
  Future<BaseResponse<FilterDto, FilterDto>> getFilterData();
}
