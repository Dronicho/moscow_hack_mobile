import 'package:get_it/get_it.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/base_module.dart';
import 'package:moscow_hack/modules/projects/cubit/project_cubit.dart';

class ProjectsModule extends BaseModule {
  @override
  Future<void> initializeDepencies(GetIt instance) async {
    get.registerFactory(() => ProjectsCubit(get(), get(), get()));
  }
}
