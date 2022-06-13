part of 'project_cubit.dart';

@freezed
class ProjectsState with _$ProjectsState {
  const factory ProjectsState.initial() = _Initial;
  const factory ProjectsState.loading() = _Loading;
  const factory ProjectsState.loaded({required List<ProjectModel> projects}) = _Loaded;
  const factory ProjectsState.error() = _Error;
}
