import 'package:auto_route/auto_route.dart';
import 'package:moscow_hack/domain/repositories/auth_repository.dart';
import 'package:moscow_hack/navigation/app_router.dart';

class AuthGuard extends AutoRedirectGuard {
  final AuthRepository _authRepository;
  AuthGuard(this._authRepository) {
    _authRepository.isAuthenticated.listen((value) {
      if (!value) {
        reevaluate();
      }
    });
  }
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isAuthed = await _authRepository.checkAuthState();
    if (isAuthed) {
      return resolver.next();
    } else {
      router.push(const LoginPageRoute());
    }
  }

  @override
  Future<bool> canNavigate(RouteMatch route) {
    return Future.value(true);
  }
}
