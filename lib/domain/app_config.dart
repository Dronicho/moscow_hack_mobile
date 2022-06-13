import 'package:flutter/material.dart';

/// Environment and other variables passed from host application.
class AppConfig {
  /// Host application's navigator key.
  final GlobalKey<NavigatorState> rootNavigatorKey;

  /// Headers for api requests.
  final Map<String, String> restApiHeaders;

  final String baseUrl;
  final String authBaseUrl;
  final Map<String, String> authServiceTokenHeader;
  final String appsFlyerDevKey;
  final String mixpanelToken;

  AppConfig({
    required this.rootNavigatorKey,
    required this.restApiHeaders,
    required this.baseUrl,
    required this.authBaseUrl,
    required this.authServiceTokenHeader,
    required this.appsFlyerDevKey,
    required this.mixpanelToken,
  });
}
