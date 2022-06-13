import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/models/auth_data_model.dart';
import 'package:moscow_hack/domain/models/base_response.dart';
import 'package:moscow_hack/domain/repositories/auth_repository.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_payload.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_payload_dto.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_response.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_strategy.dart';
import 'package:moscow_hack/modules/authorization/login/domain/repositories/login_repository.dart';
import 'package:moscow_hack/navigation/app_router.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Cubit<LoginState> {
  final LoginRepository _repository;
  final AuthRepository _authRepository;

  LoginBloc(this._repository, this._authRepository)
      : super(const LoginState.data(strategy: LoginStrategy.volonteer, payload: LoginPayload.volonteer())) {
    checkAuth();
  }

  Future<void> checkAuth() async {
    final authModel = await _authRepository.authData;
    if (authModel != AuthDataModel.empty()) {
      final r = get<AppRouter>();
      switch (authModel.strategy) {
        case LoginStrategy.volonteer:
          r.replaceNamed('/home');
          break;
        case LoginStrategy.nko:
        case LoginStrategy.business:
          r.replaceNamed('/nko-home');
          break;
      }
    }
  }

  Future<void> login() async {
    try {
      BaseResponse<LoginResponse, LoginResponse> response;
      switch (state.strategy) {
        case LoginStrategy.volonteer:
          response = await _repository.loginVolonteer(state.payload);
          break;
        case LoginStrategy.nko:
          response = await _repository.loginNKO(state.payload);
          break;
        case LoginStrategy.business:
          response = await _repository.loginNKO(state.payload);
          break;
      }
      final data = response.data;
      final authModel =
          AuthDataModel(accessToken: data.token, refreshToken: data.refreshToken, strategy: state.strategy);
      await _authRepository.authenticate(authModel);
      final r = get<AppRouter>();
      switch (state.strategy) {
        case LoginStrategy.volonteer:
          r.replaceNamed('/home');
          break;
        case LoginStrategy.nko:
        case LoginStrategy.business:
          r.replaceNamed('/nko-home');
          break;
      }
    } catch (_) {
    }
  }

  void loginUpdate({LoginStrategy? strategy, LoginPayloadDto? payload}) {
    if (strategy != null && strategy != state.strategy) {
      emit(LoginState.data(strategy: strategy, payload: _payloadForStraregy(strategy)));
    }
    if (payload != null) {
      emit(state.copyWith(payload: state.payload.merge(payload)));
    }
  }

  LoginPayload _payloadForStraregy(LoginStrategy strategy) {
    switch (strategy) {
      case LoginStrategy.volonteer:
        return const LoginPayload.volonteer();
      case LoginStrategy.nko:
        return const LoginPayload.nko();
      case LoginStrategy.business:
        return const LoginPayload.business();
    }
  }
}
