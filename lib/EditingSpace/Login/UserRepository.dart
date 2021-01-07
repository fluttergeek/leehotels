import 'package:firebase_auth/firebase_auth.dart';
import 'package:lotel/Widgets/SnackBars.dart';
import 'package:hive/hive.dart';

class UserRepository {
  FirebaseAuth firebaseAuth;
  Box box;
  UserRepository() {
    this.firebaseAuth = FirebaseAuth.instance;
    Hive.openBox('login').then((value) => box = value);
  }

  Future<User> signInUser(String password) async {
    try {
      UserCredential result = await firebaseAuth.signInWithEmailAndPassword(
          email: "lee@house.io", password: password);
      box.put("password", password);
      return result.user;
    } catch (e) {
      snackError(e);
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      box.delete('password');
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
