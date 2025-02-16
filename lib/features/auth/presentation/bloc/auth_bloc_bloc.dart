import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_care/features/auth/data/model/auth_model.dart';
import 'package:quick_care/features/auth/domain/repositories/auth_repository.dart';
import 'package:quick_care/features/auth/domain/usecases/user_login.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc_bloc.freezed.dart';

@injectable
class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  UserLogin userLogin;
  AuthBlocBloc(this.userLogin) : super(_Initial()) {
    // on<_Signup>((event, emit) async {
    //   emit(const AuthBlocState.loading());

    //   final result = await userLogin.signUp(
    //     email: event.email,
    //     password: event.password,
    //   );

    //   result.fold(
    //     (failure) => emit(AuthBlocState.error(failure.message)),
    //     (user) => emit(AuthBlocState.authenticated(user)),
    //   );
    // });

    on<_Signin>((event, emit) async {
      print("Initated at _Signin bloc");
      emit(const AuthBlocState.loading());

      final result = await userLogin.call(UserLoginParams(
        email: event.email,
        password: event.password,
      ));

      result.fold(
        (failure) => emit(AuthBlocState.error(failure.message)),
        (user) => emit(AuthBlocState.authenticated(user)),
      );
    });
  }
}
