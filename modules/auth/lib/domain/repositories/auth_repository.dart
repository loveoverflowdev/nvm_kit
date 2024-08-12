import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class AuthRepository {
  TaskEither<AuthFailure, AuthCredential> signIn({
    required Username username,
    required Password password,
  });

  TaskEither<AuthFailure, void> signOut();
}
