import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/models/user_model.dart';
import 'package:moscow_hack/domain/repositories/base_repository.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  final String id;
  final BaseRepository<UserModel> _repository;

  UserCubit(this.id, this._repository) : super(const UserState.initial()) {
    load();
  }

  Future<void> load() async {
    emit(const UserState.loading());
    try {
      final data = await _repository.getModel(id);
      if (data != null) {
        emit(UserState.loaded(user: data));
      } else {
        emit(const UserState.error());
      }
    } catch (_) {
      emit(const UserState.error());
    }
  }
}
