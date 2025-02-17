// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:quick_care/features/auth/data/datasource/auth_remote_datasource.dart'
    as _i630;
import 'package:quick_care/features/auth/data/repositories/auth_repository_imp.dart'
    as _i828;
import 'package:quick_care/features/auth/domain/repositories/auth_repository.dart'
    as _i547;
import 'package:quick_care/features/auth/domain/usecases/user_login.dart'
    as _i622;
import 'package:quick_care/features/auth/domain/usecases/user_signup.dart'
    as _i919;
import 'package:quick_care/features/auth/presentation/bloc/auth_bloc_bloc.dart'
    as _i1067;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i630.AuthRemoteDataSource>(
        () => _i630.AuthRemoteDatasourceImpl());
    gh.lazySingleton<_i547.AuthRepository>(
        () => _i828.AuthRepositoryImp(gh<_i630.AuthRemoteDataSource>()));
    gh.lazySingleton<_i622.UserLogin>(
        () => _i622.UserLogin(gh<_i547.AuthRepository>()));
    gh.lazySingleton<_i919.UserSignup>(
        () => _i919.UserSignup(gh<_i547.AuthRepository>()));
    gh.factory<_i1067.AuthBlocBloc>(() => _i1067.AuthBlocBloc(
          gh<_i622.UserLogin>(),
          gh<_i919.UserSignup>(),
        ));
    return this;
  }
}
