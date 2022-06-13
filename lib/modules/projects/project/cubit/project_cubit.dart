import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/models/project_model.dart';
import 'package:moscow_hack/domain/repositories/auth_repository.dart';
import 'package:moscow_hack/domain/repositories/base_repository.dart';
import 'package:moscow_hack/domain/repositories/user_api.dart';
import 'package:moscow_hack/domain/repositories/user_repository.dart';

part 'project_state.dart';
part 'project_cubit.freezed.dart';

class ProjectCubit extends Cubit<ProjectState> {
  final String id;
  final BaseRepository<ProjectModel> _repository;
  final UserApi _api;
  final UserRepository _userRepository;

  ProjectCubit(this.id, this._repository, this._userRepository, this._api) : super(const ProjectState.initial()) {
    load();
    _userRepository.userStream.listen((event) {
      emit((state as _Loaded).copyWith());
    });
  }

  bool isRegstered() {
    return _userRepository.currentUser.registeredProjects.contains(id);
  }

  Future<void> register() async {
    await _api.register(id);
    await _userRepository.fetchUser((await get<AuthRepository>().authData).strategy);
  }

  Future<void> load() async {
    emit(const ProjectState.loading());
    try {
      final data = await _repository.getModel(id);
      if (data != null) {
        emit(ProjectState.loaded(project: data));
      } else {
        emit(const ProjectState.error());
      }
    } catch (_) {
      emit(const ProjectState.error());
    }
  }
}
