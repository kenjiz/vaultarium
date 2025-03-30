import 'package:firebase_auth/firebase_auth.dart';
import 'package:vaultarium/features/auth/model/app_user/app_user.dart';

class AuthRepository {
  const AuthRepository(this._auth);

  final FirebaseAuth _auth;

  Stream<AppUser?> get user => _auth.authStateChanges().map(_onUserChanged);

  Future<void> signOut() => _auth.signOut();

  Future<AppUser?> signIn({
    required String email,
    required String password,
  }) async {
    final response = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return _onUserChanged(response.user);
  }

  AppUser? _onUserChanged(User? user) {
    return AppUser.fromJson({
      'uid': user?.uid,
      'email': user?.email,
      'avatarUrl': user?.photoURL,
      'firstName': user?.displayName?.split(' ')[0],
      'lastName': user?.displayName?.split(' ')[1],
    });
  }
}
