import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository(this._firebaseAuth);

  Future<User> getUser() async {
    return _firebaseAuth.currentUser;
  }
}
