import 'package:moscow_hack/domain/models/project_model.dart';
import 'package:moscow_hack/domain/models/user_model.dart';
import 'package:moscow_hack/domain/models/user_projects_response.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_response.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_dto.dart';
import 'package:moscow_hack/modules/nko/domain/models/nko_model.dart';
import 'package:moscow_hack/modules/rating/domain/rating_model.dart';

class BaseResponse<T, R> {
  final R data;
  final ErrorResponse error;

  const BaseResponse(this.data, this.error);

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    final value = json['data'];
    return BaseResponse(decode<T>(value) as R, ErrorResponse(json['error']['code'], json['error']['message']));
  }

  static dynamic decode<T>(Object? entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }
    if (entity is T) {
      return entity;
    }
    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity as T;
  }

  static T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = jsonDecoderMappings[T];
    try {
      return jsonFactory!.call(values) as T;
    } catch (ex) {
      rethrow;
    }
  }

  static List<T> _decodeList<T>(Iterable<Object?> values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();

  bool get isSuccess => error.code == 0;
}

final jsonDecoderMappings = <Type, Object Function(Map<String, dynamic>)>{
  LoginResponse: LoginResponse.fromJson,
  ProjectModel: ProjectModel.fromJson,
  UserModel: UserModel.fromJson,
  UserProjectsResponse: UserProjectsResponse.fromJson,
  NkoModel: NkoModel.fromJson,
  FilterDto: FilterDto.fromJson,
  RatingModel: RatingModel.fromJson
};

class ErrorResponse {
  final int code;
  final String message;

  ErrorResponse(this.code, this.message);
}
