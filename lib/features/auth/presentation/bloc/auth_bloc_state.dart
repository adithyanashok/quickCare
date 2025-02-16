part of 'auth_bloc_bloc.dart';

@freezed
class AuthBlocState with _$AuthBlocState {
  const factory AuthBlocState.initial() = _Initial;
  const factory AuthBlocState.authenticated(AuthModel authmodel) =
      Authenticated;
  const factory AuthBlocState.unauthenticated() = Unauthenticated;
  const factory AuthBlocState.loading() = Loading;
  const factory AuthBlocState.error(String error) = Error;
}
