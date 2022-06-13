import 'package:flutter/material.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/app_config.dart';
import 'package:moscow_hack/domain/flavor.dart';
import 'package:moscow_hack/modules/app/app_page.dart';
import 'package:moscow_hack/utils/constants.dart';

void main() {
  AppBootstrapper.instance.initialize(
      Flavor.development,
      AppConfig(
          rootNavigatorKey: GlobalKey<NavigatorState>(),
          restApiHeaders: {},
          baseUrl: AppConstants.baseUrl,
          authBaseUrl: AppConstants.baseUrl,
          authServiceTokenHeader: {},
          appsFlyerDevKey: "",
          mixpanelToken: 'mixpanelToken'));

  runApp(const App());
}
