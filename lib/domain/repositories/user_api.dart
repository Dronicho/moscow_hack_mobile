import 'package:moscow_hack/domain/models/user_projects_response.dart';
import 'package:moscow_hack/domain/repositories/base_api.dart';
import 'package:moscow_hack/modules/rating/domain/rating_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:moscow_hack/domain/models/base_response.dart';
import 'package:moscow_hack/domain/models/user_model.dart';

part 'user_api.g.dart';

@RestApi()
abstract class UserApi extends BaseApi<UserModel> {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  @GET('/users')
  Future<BaseResponse<UserModel, UserModel>> getCurrentVolonteerUser();

  @GET('/nko/me')
  Future<BaseResponse<UserModel, UserModel>> getCurrentNkoUser();

  @GET('/users')
  Future<BaseResponse<UserModel, UserModel>> getCurrentBusinessUser();

  @GET('/users/projects')
  Future<BaseResponse<UserProjectsResponse, UserProjectsResponse>> getUserProjects();

  @GET('/users/global_rating')
  Future<BaseResponse<RatingModel, List<RatingModel>>> getGlobalRating();

  @PATCH('/users/project/{id}')
  Future<void> register(@Path('id') String id);

  @override
  @GET('/users/{id}')
  Future<BaseResponse<UserModel, UserModel>> get(@Path('id') String id);
}
