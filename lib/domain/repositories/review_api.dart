import 'package:dio/dio.dart';
import 'package:moscow_hack/domain/models/feedback_model.dart';
import 'package:retrofit/retrofit.dart';

part 'review_api.g.dart';

@RestApi()
abstract class ReviewApi {
  factory ReviewApi(Dio dio, {String baseUrl}) = _ReviewApi;

  @POST('/nko/{id}/rate')
  Future<void> reviewNko(@Path('id') id, @Body() FeedbackModel data);

  @POST('/projects/{id}/rate')
  Future<void> reviewProject(@Path('id') id, @Body() FeedbackModel data);
}
