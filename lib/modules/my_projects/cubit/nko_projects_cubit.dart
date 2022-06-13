import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/models/project_model.dart';
import 'package:moscow_hack/domain/repositories/base_repository.dart';
import 'package:moscow_hack/domain/repositories/project_api.dart';
import 'package:moscow_hack/domain/services/event_bus.dart';

part 'nko_projects_state.dart';
part 'nko_projects_cubit.freezed.dart';

class NkoProjectsCubit extends Cubit<NkoProjectsState> {
  final ProjectApi _api;
  final BaseRepository<ProjectModel> _repository;
  final EventBus _bus;

  NkoProjectsCubit(this._api, this._repository, this._bus) : super(const NkoProjectsState.initial()) {
    load();
  }

  Future<void> load() async {
    emit(const NkoProjectsState.loading());
    try {
      // final query = <String, dynamic>{};
      // for (var filter in _filters) {
      //   if (!filter.isEmply) {
      //     if (filter.name == 'time') {
      //       query[filter.name] = (filter.value as DateTime).toUtc().toIso8601String();
      //     } else {
      //       query[filter.name] = filter.value;
      //     }
      //   }
      // }
      // if (_name != null && _name!.isNotEmpty) {
      //   query['search_query'] = _name;
      // }
      // String queryString = Uri.https('example.org', '/path', query).query;

      final response = await _api.getMyProjects();
      if (response.isSuccess) {
        for (var e in response.data) {
          _repository.addModel(e.id, e);
        }
        _bus.fire(response.data);
        emit(NkoProjectsState.loaded(projects: response.data));
      }
    } catch (_) {
      emit(const NkoProjectsState.error());
    }
  }

  void selectProject(ProjectModel? model) {
    final s = state as _Loaded;
    emit(_Loaded(projects: s.projects, selected: model));
  }

  void acceptUser(String id) {
    final s = state as _Loaded;
    if (s.selected == null) return;
    final newModel =
        s.selected!.copyWith(participants: s.selected!.participants.where((element) => element != id).toList());
    final newProjects = s.projects.map((e) {
      if (e.id == newModel.id) {
        return newModel;
      }
      return e;
    }).toList();
    emit(_Loaded(projects: newProjects, selected: newModel));
  }
}
