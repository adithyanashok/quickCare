import 'package:dartz/dartz.dart';
import 'package:quick_care/core/errors/failure.dart';
import 'package:quick_care/features/auth/domain/model/auth_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthModel>> signUp({
    required String email,
    required String password,
  });
  Future<Either<Failure, AuthModel>> signIn(
      {required String email, required String password});
  Future<void> signOut();
}
