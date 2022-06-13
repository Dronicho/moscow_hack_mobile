import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_strategy.dart';

part 'auth_data_model.freezed.dart';

@freezed
class AuthDataModel with _$AuthDataModel {
  factory AuthDataModel({
    required String accessToken,
    required String? refreshToken,
    required LoginStrategy strategy
  }) = _AuthDataModel;

  factory AuthDataModel.empty() => AuthDataModel(
        accessToken: '',
        refreshToken: '',
        strategy: LoginStrategy.volonteer
      );
}
