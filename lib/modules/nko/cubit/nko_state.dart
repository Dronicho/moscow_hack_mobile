part of 'nko_cubit.dart';

@freezed
class NkoState with _$NkoState {
  const factory NkoState.initial() = _Initial;
  const factory NkoState.loading() = _Loading;
  const factory NkoState.loaded({required NkoModel nko}) = _Loaded;
  const factory NkoState.error() = _Error;
}
