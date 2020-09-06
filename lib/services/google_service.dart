import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

final GoogleSignIn _googleSignIn = GoogleSignIn();

Future<User> handleSignIn() async {
  User user;

  bool isSignedIn = await _googleSignIn.isSignedIn();

  if (isSignedIn) {
    user = _auth.currentUser;
  } else {
    final GoogleSignInAccount googleSignInAccount =
        await _googleSignIn.signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    user = (await _auth.signInWithCredential(credential)).user;
  }

  return user;
}
