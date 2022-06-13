import 'dart:developer';

import 'package:intl/date_symbol_data_local.dart';
import 'package:moscow_hack/domain/api_client.dart';
import 'package:moscow_hack/domain/app_config.dart';
import 'package:moscow_hack/domain/flavor.dart';
import 'package:moscow_hack/domain/logger/logger.dart';
import 'package:moscow_hack/domain/models/project_model.dart';
import 'package:moscow_hack/domain/models/user_model.dart';
import 'package:moscow_hack/domain/repositories/auth_repository.dart';
import 'package:moscow_hack/domain/repositories/base_api.dart';
import 'package:moscow_hack/domain/repositories/base_remote_repository.dart';
import 'package:moscow_hack/domain/repositories/base_repository.dart';
import 'package:moscow_hack/domain/repositories/project_api.dart';
import 'package:moscow_hack/domain/repositories/review_api.dart';
import 'package:moscow_hack/domain/repositories/user_api.dart';
import 'package:moscow_hack/domain/repositories/user_repository.dart';
import 'package:moscow_hack/domain/service_locator.dart';
import 'package:moscow_hack/domain/services/app_manager.dart';
import 'package:moscow_hack/domain/services/cached_service.dart';
import 'package:moscow_hack/domain/services/event_bus.dart';
import 'package:moscow_hack/domain/services/shared_preferencies_service.dart';
import 'package:moscow_hack/modules/authorization/login/module.dart';
import 'package:moscow_hack/modules/filter/cubit/filter_cubit.dart';
import 'package:moscow_hack/modules/filter/domain/api/filter_api.dart';
import 'package:moscow_hack/modules/my_projects/cubit/nko_projects_cubit.dart';
import 'package:moscow_hack/modules/nko/cubit/nko_cubit.dart';
import 'package:moscow_hack/modules/nko/domain/models/nko_model.dart';
import 'package:moscow_hack/modules/nko/domain/nko_api.dart';
import 'package:moscow_hack/modules/nko/nkos_cubit/nkos_cubit.dart';
import 'package:moscow_hack/modules/projects/module.dart';
import 'package:moscow_hack/modules/projects/project/cubit/project_cubit.dart';
import 'package:moscow_hack/modules/rating/cubit/rating_cubit.dart';
import 'package:moscow_hack/modules/requests/cubit/user_cubit.dart';
import 'package:moscow_hack/navigation/app_router.dart';
import 'package:moscow_hack/navigation/auth_guard.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

Logger get l => ServiceLocator.getIt<Logger>();
final get = ServiceLocator.getIt;

class SharedBootstrapper extends ServiceLocator {
  static final instance = SharedBootstrapper._();

  SharedBootstrapper._();

  Future<void> initialize() async {
    try {
      registerSingletonAsync(SharedPreferences.getInstance);

      registerLazySingleton(() => SharedPreferencesService(get()));
      registerLazySingleton(() => CacheService(get()));
      registerLazySingleton<Logger>(
        () => Logger.factory(get<AppManager>().isDev),
      );
    } on Object catch (e) {
      log('ServicesBootstrapper error: ${e.toString()}');
    }

    await allReady();
  }
}

class AppBootstrapper extends ServiceLocator {
  final _isInitialized = BehaviorSubject.seeded(false);
  static final instance = AppBootstrapper._();
  Stream<bool> get isInitializedStream => _isInitialized.asBroadcastStream();

  static final modules = [ProjectsModule(), LoginModule()];

  AppBootstrapper._();

  Future<void> initialize(
    Flavor flavor,
    AppConfig config,
  ) async {
    try {
      await initializeDateFormatting('ru_RU');
      await SharedBootstrapper.instance.initialize();
      registerSingleton(EventBus(), dispose: (EventBus e) => e.destroy());

      registerSingleton(await ApiClient.instance());

      registerSingleton(UserApi(get()));
      registerSingleton(FilterApi(get()));
      registerSingleton(ProjectApi(get()));
      registerSingleton(NkoApi(get()));
      registerSingleton(ReviewApi(get()));
      registerSingleton(
        UserRepository(get()),
        dispose: (UserRepository param) => param.dispose(),
      );

      registerSingleton(AuthRepository(get(), get()));
      registerSingleton(AuthGuard(get()));
      registerSingleton(AppRouter(authGuard: get()));

      _registerInMemoryRepositories();

      _isInitialized.value = false;
      registerSingleton(config);
      registerSingleton(AppManager(flavor, get()));

      _registerBlocs();

      for (var module in modules) {
        await module.initializeDepencies(ServiceLocator.getIt);
      }

      _isInitialized.value = true;
    } on Object catch (e) {
      log('AppBootstrapper error: ${e.toString()}');
    }
  }

  void _registerBlocs() {
    registerFactoryParam<NkoCubit, String, void>((id, _) => NkoCubit(id, get()));
    registerFactoryParam<UserCubit, String, void>((id, _) => UserCubit(id, get()));
    registerFactoryParam<ProjectCubit, String, void>((id, _) => ProjectCubit(id, get(), get(), get()));
    registerFactory(() => ProjectFilterCubit(get(), get()));
    registerFactory(() => NkoProjectsCubit(get(), get(), get()));
    registerFactory(() => NkoFilterCubit(get(), get()));
    registerFactory(() => NkosCubit(get(), get(), get()));
    registerFactory(() => RatingCubit(get()));
  }

  void _registerInMemoryRepositories() {
    registerSingleton<BaseApi<ProjectModel>>(ProjectApi(get()));
    registerSingleton<BaseRemoteRepository<ProjectModel>>(BaseRemoteRepository<ProjectModel>());
    registerSingleton<BaseRepository<ProjectModel>>(BaseRepository<ProjectModel>());

    registerSingleton<BaseApi<NkoModel>>(NkoApi(get()));
    registerSingleton<BaseRemoteRepository<NkoModel>>(BaseRemoteRepository<NkoModel>());
    registerSingleton<BaseRepository<NkoModel>>(BaseRepository<NkoModel>());

    registerSingleton<BaseApi<UserModel>>(UserApi(get()));
    registerSingleton<BaseRemoteRepository<UserModel>>(BaseRemoteRepository<UserModel>());
    registerSingleton<BaseRepository<UserModel>>(BaseRepository<UserModel>());
  }
}
