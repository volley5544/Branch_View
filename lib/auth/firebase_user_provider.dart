import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TestFlowFirebaseUser {
  TestFlowFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

TestFlowFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TestFlowFirebaseUser> testFlowFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TestFlowFirebaseUser>(
            (user) => currentUser = TestFlowFirebaseUser(user));
