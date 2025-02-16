import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_care/core/errors/failure.dart';
import 'package:quick_care/core/usecase/usecase.dart';
import 'package:quick_care/features/auth/data/model/auth_model.dart';
import 'package:quick_care/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class UserLogin implements UseCase<AuthModel, UserLoginParams> {
  final AuthRepository authRepository;
  const UserLogin(this.authRepository);
  @override
  Future<Either<Failure, AuthModel>> call(UserLoginParams params) async {
    print("Initated at User Login");
    return await authRepository.signIn(
      email: params.email,
      password: params.password,
    );
  }
}

class UserLoginParams {
  final String email;
  final String password;

  UserLoginParams({
    required this.email,
    required this.password,
  });
}
