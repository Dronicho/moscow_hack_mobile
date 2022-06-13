import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/models/project_model.dart';
import 'package:moscow_hack/domain/repositories/base_repository.dart';
import 'package:moscow_hack/domain/repositories/project_api.dart';
import 'package:moscow_hack/domain/services/event_bus.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_description.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_payload.dart';
import 'package:rxdart/rxdart.dart';

part 'project_state.dart';
part 'project_cubit.freezed.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  final ProjectApi _api;
  final BaseRepository<ProjectModel> _repository;
  final EventBus _eventBus;

  List<FilterDescription> _filters = [];
  String? _name;

  ProjectsCubit(this._api, this._repository, this._eventBus) : super(const ProjectsState.initial()) {
    load();
    _eventBus.on<ProjectFilters>().debounceTime(const Duration(milliseconds: 500)).listen((data) {
      _filters = data.filter ?? _filters;
      _name = data.search ?? _name;
      load();
    });

  }

  Future<void> load() async {
    emit(const ProjectsState.loading());
    try {
      final query = <String, dynamic>{};
      for (var filter in _filters) {
        if (!filter.isEmply) {
          if (filter.name == 'time') {
            query[filter.name] = (filter.value as DateTime).toUtc().toIso8601String();
          } else {
            query[filter.name] = filter.value;
          }
        }
      }
      if (_name != null && _name!.isNotEmpty) {
        query['search_query'] = _name;
      }
      String queryString = Uri.https('example.org', '/path', query).query;

      final response = await _api.getAll(queryString);
      if (response.isSuccess) {
        for (var e in response.data) {
          _repository.addModel(e.id, e);
        }
        emit(ProjectsState.loaded(projects: response.data));
      }
    } catch (_) {
      emit(const ProjectsState.error());
    }
  }
}
