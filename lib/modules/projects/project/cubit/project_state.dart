part of 'project_cubit.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState.initial() = _Initial;
  const factory ProjectState.loading() = _Loading;
  const factory ProjectState.loaded({ required ProjectModel project }) = _Loaded;
  const factory ProjectState.error() = _Error;
}
