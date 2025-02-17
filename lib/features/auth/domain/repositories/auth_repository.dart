import 'package:dartz/dartz.dart';
import 'package:quick_care/core/errors/failure.dart';
import 'package:quick_care/features/auth/data/model/auth_model.dart';

abstract class AuthRepository {
  // Signup
  Future<Either<Failure, AuthModel>> signUp({
    required String name,
    required String email,
    required String password,
  });

  // SignIn
  Future<Either<Failure, AuthModel>> signIn({
    required String email,
    required String password,
  });
  // Signout
  Future<void> signOut();
}
