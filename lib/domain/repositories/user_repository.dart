import 'dart:async';

import 'package:moscow_hack/domain/models/base_response.dart';
import 'package:moscow_hack/domain/models/user_model.dart';
import 'package:moscow_hack/domain/repositories/user_api.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_strategy.dart';

class UserRepository {
  late UserModel currentUser;

  late StreamController<UserModel> _userStreamController;

  Stream<UserModel> get userStream => _userStreamController.stream;

  final UserApi _api;

  UserRepository(this._api) {
    _userStreamController = StreamController<UserModel>.broadcast();
  }

  Future<bool> fetchUser(LoginStrategy strategy) async {
    try {
      BaseResponse<UserModel, UserModel> response;
      switch (strategy) {
        case LoginStrategy.volonteer:
          response = await _api.getCurrentVolonteerUser();
          break;
        case LoginStrategy.nko:
          response = await _api.getCurrentNkoUser();
          break;
        case LoginStrategy.business:
          response = await _api.getCurrentBusinessUser();
          break;
      }
      if (response.isSuccess) {
        currentUser = response.data;
        _userStreamController.add(currentUser);
        return true;
      }
      return false;
    } catch (err) {
      return false;
    }
  }

  void dispose() {
    _userStreamController.close();
  }
}
