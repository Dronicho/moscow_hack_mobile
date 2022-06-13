// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.authGuard})
      : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashScreen());
    },
    LoginPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    HomeNkoPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeNkoPage());
    },
    EmptyRouterPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    EmptyRouterScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterScreen());
    },
    RatingScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: const RatingScreen()));
    },
    ProfileScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfileScreen());
    },
    ProjectsViewRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: const ProjectsView()));
    },
    ProjectScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProjectScreenRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              WrappedRoute(child: ProjectScreen(key: args.key, id: args.id)));
    },
    NkosScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: WrappedRoute(child: const NkosScreen()));
    },
    NkoScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NkoScreenRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: NkoScreen(key: args.key, id: args.id)));
    },
    EmptyMyProjectRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyMyProject());
    },
    RequestsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RequestsScreen());
    },
    NkoProjectsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: const NkoProjectsScreen()));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        RouteConfig(SplashScreenRoute.name, path: '/splash'),
        RouteConfig(LoginPageRoute.name, path: '/login'),
        RouteConfig(HomePageRoute.name, path: '/home', guards: [
          authGuard
        ], children: [
          RouteConfig(EmptyRouterPageRoute.name,
              path: 'projects',
              parent: HomePageRoute.name,
              children: [
                RouteConfig(ProjectsViewRoute.name,
                    path: '', parent: EmptyRouterPageRoute.name),
                RouteConfig(ProjectScreenRoute.name,
                    path: ':id', parent: EmptyRouterPageRoute.name)
              ]),
          RouteConfig(EmptyRouterScreenRoute.name,
              path: 'nko',
              parent: HomePageRoute.name,
              children: [
                RouteConfig(NkosScreenRoute.name,
                    path: '', parent: EmptyRouterScreenRoute.name),
                RouteConfig(NkoScreenRoute.name,
                    path: ':id', parent: EmptyRouterScreenRoute.name)
              ]),
          RouteConfig(RatingScreenRoute.name,
              path: 'rating', parent: HomePageRoute.name),
          RouteConfig(ProfileScreenRoute.name,
              path: 'profile', parent: HomePageRoute.name)
        ]),
        RouteConfig(HomeNkoPageRoute.name, path: '/nko-home', guards: [
          authGuard
        ], children: [
          RouteConfig(EmptyMyProjectRoute.name,
              path: 'projects',
              parent: HomeNkoPageRoute.name,
              children: [
                RouteConfig(NkoProjectsScreenRoute.name,
                    path: '', parent: EmptyMyProjectRoute.name),
                RouteConfig(ProjectScreenRoute.name,
                    path: ':id', parent: EmptyMyProjectRoute.name)
              ]),
          RouteConfig(RequestsScreenRoute.name,
              path: 'requests', parent: HomeNkoPageRoute.name),
          RouteConfig(ProfileScreenRoute.name,
              path: 'profile', parent: HomeNkoPageRoute.name)
        ])
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/splash');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [LoginPage]
class LoginPageRoute extends PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/login');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute({List<PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [HomeNkoPage]
class HomeNkoPageRoute extends PageRouteInfo<void> {
  const HomeNkoPageRoute({List<PageRouteInfo>? children})
      : super(HomeNkoPageRoute.name,
            path: '/nko-home', initialChildren: children);

  static const String name = 'HomeNkoPageRoute';
}

/// generated route for
/// [EmptyRouterPage]
class EmptyRouterPageRoute extends PageRouteInfo<void> {
  const EmptyRouterPageRoute({List<PageRouteInfo>? children})
      : super(EmptyRouterPageRoute.name,
            path: 'projects', initialChildren: children);

  static const String name = 'EmptyRouterPageRoute';
}

/// generated route for
/// [EmptyRouterScreen]
class EmptyRouterScreenRoute extends PageRouteInfo<void> {
  const EmptyRouterScreenRoute({List<PageRouteInfo>? children})
      : super(EmptyRouterScreenRoute.name,
            path: 'nko', initialChildren: children);

  static const String name = 'EmptyRouterScreenRoute';
}

/// generated route for
/// [RatingScreen]
class RatingScreenRoute extends PageRouteInfo<void> {
  const RatingScreenRoute() : super(RatingScreenRoute.name, path: 'rating');

  static const String name = 'RatingScreenRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileScreenRoute extends PageRouteInfo<void> {
  const ProfileScreenRoute() : super(ProfileScreenRoute.name, path: 'profile');

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [ProjectsView]
class ProjectsViewRoute extends PageRouteInfo<void> {
  const ProjectsViewRoute() : super(ProjectsViewRoute.name, path: '');

  static const String name = 'ProjectsViewRoute';
}

/// generated route for
/// [ProjectScreen]
class ProjectScreenRoute extends PageRouteInfo<ProjectScreenRouteArgs> {
  ProjectScreenRoute({dynamic key, required String id})
      : super(ProjectScreenRoute.name,
            path: ':id', args: ProjectScreenRouteArgs(key: key, id: id));

  static const String name = 'ProjectScreenRoute';
}

class ProjectScreenRouteArgs {
  const ProjectScreenRouteArgs({this.key, required this.id});

  final dynamic key;

  final String id;

  @override
  String toString() {
    return 'ProjectScreenRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [NkosScreen]
class NkosScreenRoute extends PageRouteInfo<void> {
  const NkosScreenRoute() : super(NkosScreenRoute.name, path: '');

  static const String name = 'NkosScreenRoute';
}

/// generated route for
/// [NkoScreen]
class NkoScreenRoute extends PageRouteInfo<NkoScreenRouteArgs> {
  NkoScreenRoute({dynamic key, required String id})
      : super(NkoScreenRoute.name,
            path: ':id', args: NkoScreenRouteArgs(key: key, id: id));

  static const String name = 'NkoScreenRoute';
}

class NkoScreenRouteArgs {
  const NkoScreenRouteArgs({this.key, required this.id});

  final dynamic key;

  final String id;

  @override
  String toString() {
    return 'NkoScreenRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [EmptyMyProject]
class EmptyMyProjectRoute extends PageRouteInfo<void> {
  const EmptyMyProjectRoute({List<PageRouteInfo>? children})
      : super(EmptyMyProjectRoute.name,
            path: 'projects', initialChildren: children);

  static const String name = 'EmptyMyProjectRoute';
}

/// generated route for
/// [RequestsScreen]
class RequestsScreenRoute extends PageRouteInfo<void> {
  const RequestsScreenRoute()
      : super(RequestsScreenRoute.name, path: 'requests');

  static const String name = 'RequestsScreenRoute';
}

/// generated route for
/// [NkoProjectsScreen]
class NkoProjectsScreenRoute extends PageRouteInfo<void> {
  const NkoProjectsScreenRoute() : super(NkoProjectsScreenRoute.name, path: '');

  static const String name = 'NkoProjectsScreenRoute';
}
