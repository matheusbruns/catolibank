import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CatolibankFirebaseUser {
  CatolibankFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CatolibankFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CatolibankFirebaseUser> catolibankFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CatolibankFirebaseUser>(
      (user) {
        currentUser = CatolibankFirebaseUser(user);
        return currentUser!;
      },
    );
