import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/models/project_model.dart';
import 'package:moscow_hack/domain/repositories/project_api.dart';

part 'create_project_state.dart';
part 'create_project_cubit.freezed.dart';

class CreateProjectCubit extends Cubit<CreateProjectState> {
  CreateProjectCubit()
      : super(CreateProjectState(
            model: ProjectModel(
                id: '',
                name: '',
                authorID: '',
                description: '',
                ageStart: 12,
                ageEnd: 15,
                tags: [''],
                skills: [''],
                website: '',
                deadline: DateTime.now(),
                timeStart: DateTime.now(),
                timeEnd: DateTime.now())));

  void updateEvent(ProjectModel model) {
    emit(CreateProjectState(model: model));
  }

  Future<void> create() async {
    await get<ProjectApi>().create(state.model);
  }
}
