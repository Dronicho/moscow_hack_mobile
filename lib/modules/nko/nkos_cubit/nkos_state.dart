part of 'nkos_cubit.dart';

@freezed
class NkosState with _$NkosState {
  const factory NkosState.initial() = _Initial;
  const factory NkosState.loading() = _Loading;
  const factory NkosState.loaded({required List<NkoModel> projects}) = _Loaded;
  const factory NkosState.error() = _Error;
}
