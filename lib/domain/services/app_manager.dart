import 'package:moscow_hack/domain/app_config.dart';
import 'package:moscow_hack/domain/flavor.dart';

const _shouldSaveAuthState = false;

/// This service manages consumer_onboarding package build type and etc.
class AppManager {
  Flavor flavor;
  AppConfig config;

  bool get isDev => flavor != Flavor.prod;

  /// Save auth state through app sessions.
  bool get shouldSaveAuthState {
    return isDev && _shouldSaveAuthState;
  }

  AppManager(this.flavor, this.config);

  /// Close back to host app.
  void closeCJMRouter() {
    config.rootNavigatorKey.currentState?.pop();
  }
}
