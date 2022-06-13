part of 'rating_cubit.dart';

@freezed
class RatingState with _$RatingState {
  const factory RatingState.initial() = _Initial;
  // ignore: non_constant_identifier_names
  const factory RatingState.Loading() = _Loading;
  const factory RatingState.loaded({@Default(<RatingModel>[]) List<RatingModel> ratings}) = _Loaded;
  const factory RatingState.error() = _Error;
  
}

