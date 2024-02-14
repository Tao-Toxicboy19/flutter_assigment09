import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_assigment09/utils/logger.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<dynamic> signUpWithEamilAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      logger.e(e);
    }
  }
}
