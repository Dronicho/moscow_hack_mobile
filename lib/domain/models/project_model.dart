import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
class ProjectModel with _$ProjectModel {
  const factory ProjectModel(
      {@JsonKey(name: 'ID') required String id,
      required String name,
      required String authorID,
      required String description,
      String? shortDescription,
      required int ageStart,
      required int ageEnd,
      @Default(<String>[]) List<String> tags,
      required String website,
      required DateTime deadline,
      required DateTime timeStart,
      required DateTime timeEnd,
      @Default('') String participation,
      @Default('') String location,
      @Default(<String>[]) List<String> skills,
      @Default(<String>[]) List<String> roles,
      @Default(<String>[]) List<String> requirements,
      @Default(<String>[]) List<String> services,
      @Default(<String>[]) List<String> participants,
      String? photoURL}) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) => _$ProjectModelFromJson(json);
}
