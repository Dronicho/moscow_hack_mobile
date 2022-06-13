import 'dart:async';

import 'package:moscow_hack/domain/models/auth_data_model.dart';
import 'package:moscow_hack/domain/repositories/user_repository.dart';
import 'package:moscow_hack/domain/services/cached_service.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_strategy.dart';
import 'package:moscow_hack/utils/enum_utils.dart';
import 'package:rxdart/rxdart.dart';

class AuthRepository {
  final CacheService _cacheService;
  final UserRepository _userRepository;

  var _authModel = AuthDataModel.empty();

  final _isAuthenticated = BehaviorSubject.seeded(false);
  Stream<bool> get isAuthenticated => _isAuthenticated.asBroadcastStream();
  Future<AuthDataModel> get authData => Future.value(_authModel);

  AuthRepository(
    this._cacheService,
    this._userRepository,
  );

  Future<void> authenticate(AuthDataModel model) async {
    _authModel = model;
    await _userRepository.fetchUser(model.strategy);
    _isAuthenticated.value = true;

    await _saveAuthModel(model);
  }

  Future<void> logout() async {
    _authModel = AuthDataModel.empty();
    await _removeAuthModel();
    _isAuthenticated.value = false;
  }

  Future<bool> checkAuthState() async {
    if (_authModel != AuthDataModel.empty()) {
      return true;
    }
    final authModel = await _getAuthModelFromPersistance();
    final isAuthModelNotEmpty = authModel != AuthDataModel.empty();

    if (isAuthModelNotEmpty) {
      _authModel = authModel;
      await Future.delayed(const Duration(milliseconds: 100));
      final res = await _userRepository.fetchUser(_authModel.strategy);
      await Future.delayed(const Duration(milliseconds: 100));
      if (!_isAuthenticated.value) {
        _isAuthenticated.value = true;
      }

      return res;
    }

    return false;
  }

  Future<void> _saveAuthModel(AuthDataModel model) async {
    await _cacheService.set('access_token', model.accessToken);
    await _cacheService.set('refresh_token', model.refreshToken);
    await _cacheService.set('strategy', model.strategy.name);
  }

  Future<void> _removeAuthModel() async {
    await _cacheService.remove('access_token');
    await _cacheService.remove('refresh_token');
  }

  Future<AuthDataModel> _getAuthModelFromPersistance() async {
    final accessToken = _cacheService.get<String>('access_token');
    final refreshToken = _cacheService.get<String>('refresh_token');
    final strategy = _cacheService.get<String>('strategy');

    if (accessToken == null || refreshToken == null) {
      return AuthDataModel.empty();
    }

    return AuthDataModel(
      accessToken: accessToken,
      strategy: EnumUtils.fromString(LoginStrategy.values, strategy ?? '') ?? LoginStrategy.volonteer,
      refreshToken: refreshToken,
    );
  }
}
