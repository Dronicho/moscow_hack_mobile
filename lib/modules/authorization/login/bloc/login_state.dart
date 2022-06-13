part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.data({required LoginStrategy strategy, required LoginPayload payload}) = _Data;
  const factory LoginState.verified({required LoginStrategy strategy, required LoginPayload payload}) = _Verified;
}
