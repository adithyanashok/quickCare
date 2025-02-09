import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_care/core/errors/failure.dart';
import 'package:quick_care/core/errors/firebase_error_mapper.dart';
import 'package:quick_care/features/auth/domain/model/auth_model.dart';
import 'package:quick_care/features/auth/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImp extends AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Either<Failure, AuthModel>> signUp(
      {required String email, required String password}) async {
    try {
      if (email.isEmpty) {
        return Left(Failure("Email is empty"));
      }
      if (password.isEmpty) {
        return Left(Failure("Password is empty"));
      }

      // Create new user
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      // Extract the created user
      AuthModel user = AuthModel(
          id: userCredential.user!.uid, email: email, password: password);
      // Create new database for the created user.
      await _firestore.collection('users').doc(user.id).set(user.toJson());
      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseErrorMapper.fromFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure("Unexpected error: ${e.toString()}"));
    }
  }

  @override
  Future<Either<Failure, AuthModel>> signIn(
      {required String email, required String password}) async {
    try {
      if (email.isEmpty) {
        return Left(Failure("Email is empty"));
      }
      if (password.isEmpty) {
        return Left(Failure("Password is empty"));
      }

      // Signin with email
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      // Extract the created user

      AuthModel user = AuthModel(
          id: userCredential.user!.uid, email: email, password: password);

      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseErrorMapper.fromFirebaseAuthException(e));
    } catch (e) {
      return Left(Failure("Unexpected error: ${e.toString()}"));
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
