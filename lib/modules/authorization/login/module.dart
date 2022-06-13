import 'package:get_it/get_it.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/base_module.dart';
import 'package:moscow_hack/modules/authorization/login/bloc/login_bloc.dart';
import 'package:moscow_hack/modules/authorization/login/domain/repositories/login_repository.dart';

class LoginModule extends BaseModule {
  @override
  Future<void> initializeDepencies(GetIt instance) async {
    get.registerSingleton(LoginRepository(get()));
    get.registerFactory(() => LoginBloc(get(), get()));
  }
}
