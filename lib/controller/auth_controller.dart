import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore =FirebaseFirestore.instance;
  Stream<User?> get streamAuth => _auth.authStateChanges();

  signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    print('OnPressed googleUser  ${googleUser != null}');
    print('OnPressed googleUser authentication  ${googleUser?.authentication}');

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    print('OnPressed googleAuth?.accessToken is ${googleAuth?.accessToken}');

    final AuthCredential credential = await GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    UserCredential userCredential =
        await _auth.signInWithCredential(credential);

    User? user = userCredential.user;
    print('OnPressed userCredential.user is ${userCredential.user}');

    print('OnPressed user!=null is ${user != null}');
    print('OnPressed userCredential.additionalUserInfo!.isNewUser is ${userCredential.additionalUserInfo!.isNewUser}');

    if (user != null) {
      if (userCredential.additionalUserInfo!.isNewUser) {
        _firestore.collection('users').doc(user.uid).set({
          'username': user.displayName,
          'uid': user.uid,
          'profilePhoto': user.photoURL,
          'email':user.providerData.last.email
        });
      }
    }
  }
}
