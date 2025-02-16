import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_care/features/auth/data/model/auth_model.dart';

abstract class AuthRemoteDataSource {
  // Future<AuthModel> signUp(String email, String password);
  Future<AuthModel> signIn(String email, String password);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDatasourceImpl implements AuthRemoteDataSource {
  AuthRemoteDatasourceImpl();
  final _firestore = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;

  // Signin
  @override
  Future<AuthModel> signIn(String email, String password) async {
    print("Now at AuthRemoteDataSource");
    // Create new user
    final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    // Extract the created user
    final user = AuthModel(
        id: userCredential.user!.uid, email: email, password: password);
    // Create new database for the created user.
    await _firestore.collection('users').doc(user.id).set(user.toJson());
    return user;
  }
}
