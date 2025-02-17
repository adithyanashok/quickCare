import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_care/core/errors/failure.dart';
import 'package:quick_care/core/errors/firebase_error_mapper.dart';
import 'package:quick_care/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:quick_care/features/auth/data/model/auth_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quick_care/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImp extends AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImp(this.remoteDataSource);
  @override
  Future<Either<Failure, AuthModel>> signIn({
    required String email,
    required String password,
  }) async {
    print("Now at AuthRepositoryImp");
    try {
      final user = await remoteDataSource.signIn(email, password);
      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseErrorMapper.fromFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuthModel>> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    print("Now at AuthRepositoryImp");
    try {
      final user = await remoteDataSource.signUp(name, email, password);
      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseErrorMapper.fromFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
