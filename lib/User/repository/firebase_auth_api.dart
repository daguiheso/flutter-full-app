import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final UserCredential user = await _auth.signInWithCredential(credential);

    // Once signed in, return the UserCredential
    return user;
  }

  signOut() async {
    // ignore: avoid_print
    await _auth.signOut().then((value) => print('Sesión cerrada'));
    _googleSignIn.signOut();
    // ignore: avoid_print
    print('Sesiones cerradas');
  }
}
