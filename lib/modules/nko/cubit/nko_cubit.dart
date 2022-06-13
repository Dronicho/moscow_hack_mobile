import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/repositories/base_repository.dart';
import 'package:moscow_hack/modules/nko/domain/models/nko_model.dart';

part 'nko_state.dart';
part 'nko_cubit.freezed.dart';

class NkoCubit extends Cubit<NkoState> {
  final String id;
  final BaseRepository<NkoModel> _repository;

  NkoCubit(this.id, this._repository) : super(const NkoState.initial()) {
    load();
  }

  Future<void> load() async {
    emit(const NkoState.loading());
    try {
      final data = await _repository.getModel(id);
      if (data != null) {
        emit(NkoState.loaded(nko: data));
      } else {
        emit(const NkoState.error());
      }
    } catch (_) {
      emit(const NkoState.error());
    }
  }
}
