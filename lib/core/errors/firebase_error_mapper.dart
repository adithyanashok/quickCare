import 'failure.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseErrorMapper {
  static Failure fromFirebaseAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'email-already-in-use':
        return Failure('This email is already registered.');
      case 'wrong-password':
        return Failure('Incorrect password. Try again.');
      case 'user-not-found':
        return Failure('No account found for this email.');
      case 'network-request-failed':
        return Failure('No internet connection.');
      default:
        return Failure('An unexpected error occurred: ${e.message}');
    }
  }
}
