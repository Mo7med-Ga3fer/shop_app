import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthMethods
{

  ///////////Create User Method////////////

  static Future<void> createUser({required String email, required String password}) async {
    try {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
  }

  ///////////Login User Method////////////

  static Future<void> loginUser({required String email, required String password}) async {
    try {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
  }

  ///////////Reset Password Method////////////

  static Future<void> resetPassord({required String email}) async {
    await FirebaseAuth.instance
    .sendPasswordResetEmail(email: email);
  }


}