import 'package:dio/dio.dart';
import 'package:moscow_hack/domain/models/base_response.dart';
import 'package:moscow_hack/domain/models/project_model.dart';
import 'package:moscow_hack/domain/repositories/base_api.dart';
import 'package:retrofit/retrofit.dart';

part 'project_api.g.dart';

@RestApi()
abstract class ProjectApi extends BaseApi<ProjectModel> {
  factory ProjectApi(Dio dio, {String baseUrl}) = _ProjectApi;

  @override
  @GET('/projects/{id}')
  Future<BaseResponse<ProjectModel, ProjectModel>> get(@Path('id') String id);

  @GET('/projects?{query}')
  Future<BaseResponse<ProjectModel, List<ProjectModel>>> getAll(@Path('query') String query);

  @GET('/nko/projects')
  Future<BaseResponse<ProjectModel, List<ProjectModel>>> getMyProjects();

  @POST('/nko/project')
  Future<void> create(@Body(nullToAbsent: true) ProjectModel model);
}
