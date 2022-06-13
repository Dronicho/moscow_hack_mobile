import 'package:flutter/material.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/navigation/app_router.dart';
import 'package:moscow_hack/theme/theme.dart';
import 'package:moscow_hack/utils/utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: AppBootstrapper.instance.isInitializedStream,
        builder: (context, snapshot) {
          final isInitialized = snapshot.data ?? false;
          if (!isInitialized) {
            return const CircularProgressIndicator.adaptive();
          }

          return const AppScreen();
        });
  }
}

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: Utils.hideKeyboard,
        child: MaterialApp.router(
            theme: lightTheme(),
            darkTheme: darkTheme,
            routeInformationParser: get<AppRouter>().defaultRouteParser(),
            routerDelegate: get<AppRouter>().delegate()));
  }
}
