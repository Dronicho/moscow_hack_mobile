import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/repositories/user_api.dart';
import 'package:moscow_hack/modules/rating/domain/rating_model.dart';

part 'rating_state.dart';
part 'rating_cubit.freezed.dart';

class RatingCubit extends Cubit<RatingState> {
  final UserApi _api;

  RatingCubit(this._api) : super(const RatingState.initial()) {
    load();
  }

  Future<void> load() async {
    try {
      final response = await _api.getGlobalRating();
      emit(RatingState.loaded(ratings: response.data));
    } catch (_) {
      emit(const RatingState.error());
    }
  }
}
