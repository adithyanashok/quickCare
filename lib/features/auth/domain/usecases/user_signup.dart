import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_care/core/errors/failure.dart';
import 'package:quick_care/core/usecase/usecase.dart';
import 'package:quick_care/features/auth/data/model/auth_model.dart';
import 'package:quick_care/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class UserSignup implements UseCase<AuthModel, UserSignupParams> {
  final AuthRepository authRepository;
  const UserSignup(this.authRepository);
  @override
  Future<Either<Failure, AuthModel>> call(UserSignupParams params) async {
    print("Initated at User Login");
    if (!_isValidEmail(params.email)) {
      return Left(Failure("Invalid email format"));
    }
    if (!_isValidPassword(params.password)) {
      return Left(Failure("Password must be at least 6 characters"));
    }
    return await authRepository.signUp(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }

  bool _isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  bool _isValidPassword(String password) {
    return password.length >= 6;
  }
}

class UserSignupParams {
  final String name;
  final String email;
  final String password;

  UserSignupParams({
    required this.name,
    required this.email,
    required this.password,
  });
}
