part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _Initial;
  const factory FilterState.loading() = _Loading;
  const factory FilterState.loaded({@Default(<FilterDescription>[]) List<FilterDescription> filters}) = _Loaded;
}
