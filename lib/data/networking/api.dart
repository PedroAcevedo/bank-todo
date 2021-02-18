import 'package:firebase_auth/firebase_auth.dart';

class API {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future login(String email, String password) async {
    final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    ))
        .user;

    print(user);

    return {'user': user, 'token': user != null? await user.getIdToken() : ''};
  }
}
