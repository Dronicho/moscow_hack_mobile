import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/models/project_model.dart';

part 'user_projects_response.freezed.dart';
part 'user_projects_response.g.dart';

@freezed
class UserProjectsResponse with _$UserProjectsResponse {
  const factory UserProjectsResponse({
    required List<ProjectModel> createdProjects,
    required List<ProjectModel> memberProjects,
  }) = _UserProjectsResponse;

  factory UserProjectsResponse.fromJson(Map<String, dynamic> json) => _$UserProjectsResponseFromJson(json);
}
