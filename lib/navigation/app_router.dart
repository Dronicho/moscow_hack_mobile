import 'package:auto_route/auto_route.dart';
import 'package:moscow_hack/modules/authorization/login/login_page.dart';
import 'package:moscow_hack/modules/home/home_nko_page.dart';
import 'package:moscow_hack/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:moscow_hack/modules/my_projects/nko_projects.dart';
import 'package:moscow_hack/modules/nko/nko_screen.dart';
import 'package:moscow_hack/modules/nko/nkos_screen.dart';
import 'package:moscow_hack/modules/profile/profile_screen.dart';
import 'package:moscow_hack/modules/projects/project/project_view.dart';
import 'package:moscow_hack/modules/projects/projects_screen.dart';
import 'package:moscow_hack/modules/rating/rating_screen.dart';
import 'package:moscow_hack/modules/requests/requests_screen.dart';
import 'package:moscow_hack/navigation/auth_guard.dart';
import 'package:moscow_hack/widgets/splash_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(initial: true, path: '/splash', page: SplashScreen),
  AutoRoute(path: '/login', page: LoginPage),
  AutoRoute(
    guards: [AuthGuard],
    path: '/home',
    page: HomePage,
    children: [
      AutoRoute(
          path: 'projects',
          page: EmptyRouterPage,
          children: [AutoRoute(path: '', page: ProjectsView), AutoRoute(path: ':id', page: ProjectScreen)]),
      AutoRoute(
          path: 'nko',
          page: EmptyRouterScreen,
          children: [AutoRoute(path: '', page: NkosScreen), AutoRoute(path: ':id', page: NkoScreen)]),
      AutoRoute(path: 'rating', page: RatingScreen),
      AutoRoute(path: 'profile', page: ProfileScreen),
    ],
  ),
  AutoRoute(
    guards: [AuthGuard],
    initial: true,
    path: '/nko-home',
    page: HomeNkoPage,
    children: [
      AutoRoute(
          path: 'projects',
          page: EmptyMyProject,
          children: [AutoRoute(path: '', page: NkoProjectsScreen), AutoRoute(path: ':id', page: ProjectScreen)]),
      AutoRoute(path: 'requests', page: RequestsScreen),
      AutoRoute(path: 'profile', page: ProfileScreen),
    ],
  )
])
class AppRouter extends _$AppRouter {
  AppRouter({super.navigatorKey, required super.authGuard});
}

class EmptyMyProject extends AutoRouter {
  const EmptyMyProject({Key? key}) : super(key: key);
}
