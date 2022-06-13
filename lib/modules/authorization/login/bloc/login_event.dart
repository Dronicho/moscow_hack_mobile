part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.verify() = _Verify;
  const factory LoginEvent.update({ 
    LoginStrategy? strategy,
    LoginPayloadDto? payload
   }) = _Update;
  const factory LoginEvent.login() = _Login;
}