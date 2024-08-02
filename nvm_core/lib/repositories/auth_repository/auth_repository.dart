import 'package:fpdart/fpdart.dart';
import 'package:nvm_core/common.dart';

import 'entities.dart';

abstract interface class AuthRepository {
  TaskEither<Failure, AuthCredentials> signIn({
    required String username,
    required String password,
  });

  TaskEither<Failure, void> signOut();
}
