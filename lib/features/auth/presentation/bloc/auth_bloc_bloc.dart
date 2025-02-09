import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_care/features/auth/domain/model/auth_model.dart';
import 'package:quick_care/features/auth/domain/repositories/auth_repository.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc_bloc.freezed.dart';

@injectable
class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthRepository authRepository;
  AuthBlocBloc(this.authRepository) : super(_Initial()) {
    on<_Signup>((event, emit) async {
      emit(const AuthBlocState.loading());

      final result = await authRepository.signUp(
        email: event.email,
        password: event.password,
      );

      result.fold(
        (failure) => emit(AuthBlocState.error(failure.message)),
        (user) => emit(AuthBlocState.authenticated(user)),
      );
    });

    on<_Signin>((event, emit) async {
      emit(const AuthBlocState.loading());

      final result = await authRepository.signIn(
        email: event.email,
        password: event.password,
      );

      result.fold(
        (failure) => emit(AuthBlocState.error(failure.message)),
        (user) => emit(AuthBlocState.authenticated(user)),
      );
    });
  }
}
