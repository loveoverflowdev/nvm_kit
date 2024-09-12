import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class AuthRepository {
  TaskEither<AuthFailure, AuthCredentials> signIn({
    required SigninForm form,
  });

  TaskEither<AuthFailure, void> signOut();
}
