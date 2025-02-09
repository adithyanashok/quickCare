part of 'auth_bloc_bloc.dart';

@freezed
class AuthBlocEvent with _$AuthBlocEvent {
  const factory AuthBlocEvent.signup(String email, String password) = _Signup;
  const factory AuthBlocEvent.signin(String email, String password) = _Signin;
  const factory AuthBlocEvent.signinout() = _Signout;
}
