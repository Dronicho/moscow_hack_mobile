import 'package:dio/dio.dart';
import 'package:moscow_hack/domain/models/base_response.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_payload.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_response.dart';
import 'package:moscow_hack/utils/routes.dart';
import 'package:retrofit/retrofit.dart';

part 'login_repository.g.dart';

@RestApi()
abstract class LoginRepository {
  factory LoginRepository(Dio dio, {String baseUrl}) = _LoginRepository;

  @POST(AppRoutes.authUrl)
  Future<BaseResponse<LoginResponse, LoginResponse>> loginVolonteer(@Body(nullToAbsent: true) LoginPayload data);

  @POST(AppRoutes.authNkoUrl)
  Future<BaseResponse<LoginResponse, LoginResponse>> loginNKO(@Body(nullToAbsent: true) LoginPayload data);
}
