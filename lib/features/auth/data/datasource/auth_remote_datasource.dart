import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_care/features/auth/data/model/auth_model.dart';

abstract class AuthRemoteDataSource {
  Future<AuthModel> signUp(String name, String email, String password);
  Future<AuthModel> signIn(String email, String password);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDatasourceImpl implements AuthRemoteDataSource {
  final _firestore = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;

  // Signin
  @override
  Future<AuthModel> signIn(String email, String password) async {
    print("Now at AuthRemoteDataSource");
    // Create new user
    final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    // Get current user
    final docSnap = await _firestore
        .collection('users')
        .doc(userCredential.user?.uid)
        .get();
    final currentUser = AuthModel.fromJson(docSnap.data()!);
    final user = AuthModel(
        id: currentUser.id, email: currentUser.id, name: currentUser.name);
    return user;
  }

  @override
  Future<AuthModel> signUp(String name, String email, String password) async {
    print("Now at AuthRemoteDataSource");
    // Create new user
    final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    final userData =
        AuthModel(id: userCredential.user!.uid, email: email, name: name);
    await _firestore
        .collection('users')
        .doc(userCredential.user!.uid)
        .set(userData.toJson());
    // Get current user
    final docSnap = await _firestore
        .collection('users')
        .doc(userCredential.user?.uid)
        .get();
    final currentUser = AuthModel.fromJson(docSnap.data()!);
    final user = AuthModel(
        id: currentUser.id, email: currentUser.id, name: currentUser.name);
    return user;
  }
}
