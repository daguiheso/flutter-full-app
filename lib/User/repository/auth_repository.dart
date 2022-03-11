import 'package:button_animate/User/repository/firebase_auth_api.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<UserCredential> signInFirebase() =>
      _firebaseAuthAPI.signInWithGoogle();

  signOut() => _firebaseAuthAPI.signOut();
}
