import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class AuthRepository {
  TaskEither<AuthFailure, AuthCredentials> signIn({
    required Username username,
    required Password password,
  });

  TaskEither<AuthFailure, void> signOut();
}
