import 'package:flutter/material.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/models/auth_data_model.dart';
import 'package:moscow_hack/domain/repositories/auth_repository.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_strategy.dart';
import 'package:moscow_hack/navigation/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    get<AuthRepository>().checkAuthState().then((value) async {
      final authModel = await get<AuthRepository>().authData;
      final r = get<AppRouter>();
      if (authModel != AuthDataModel.empty()) {
        switch (authModel.strategy) {
          case LoginStrategy.volonteer:
            r.replaceNamed('/home');
            break;
          case LoginStrategy.nko:
          case LoginStrategy.business:
            r.replaceNamed('/nko-home');
            break;
        }
      } else {
        r.replaceNamed('/login');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
