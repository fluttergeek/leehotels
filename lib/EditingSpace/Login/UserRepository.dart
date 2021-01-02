import 'package:firebase_auth/firebase_auth.dart';
import 'package:lotel/Widgets/SnackBars.dart';

class UserRepository {
  FirebaseAuth firebaseAuth;

  UserRepository() {
    this.firebaseAuth = FirebaseAuth.instance;
  }

  Future<User> signInUser(String password) async {
    try {
      UserCredential result = await firebaseAuth.signInWithEmailAndPassword(
          email: "lee@house.io", password: password);
      return result.user;
    } catch (e) {
      snackError(e);
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      snackError(e);
    }
  }

  bool isSignedIn() {
    var currentUser = firebaseAuth.currentUser;
    return currentUser != null;
  }
}
