import 'package:auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

import 'entities.dart';

ReaderTaskEither<AuthRepository, AuthFailure, AuthCredentials> signInTask({
  required SigninForm form,
}) =>
    ReaderTaskEither(
      (repository) => repository.signIn(form: form).run(),
    );

ReaderTaskEither<AuthRepository, AuthFailure, void> signOutTask() =>
    ReaderTaskEither(
      (repository) => repository.signOut().run(),
    );
