part of 'nko_projects_cubit.dart';

@freezed
class NkoProjectsState with _$NkoProjectsState {
  const factory NkoProjectsState.initial() = _Initial;
  const factory NkoProjectsState.loading() = _Loading;
  const factory NkoProjectsState.loaded({required List<ProjectModel> projects, ProjectModel? selected}) = _Loaded;
  const factory NkoProjectsState.error() = _Error;
}
