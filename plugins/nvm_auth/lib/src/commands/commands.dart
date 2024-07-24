import 'package:fpdart/fpdart.dart';

import '../repositories/repositories.dart';

ReaderTaskEither<AuthRepository, SigninFailure, SigninResponse> signIn({
  required Username username,
  required Password password,
}) =>
    ReaderTaskEither(
      (authRepository) => authRepository
          .signIn(
            username: username,
            password: password,
          )
          .run(),
    );

ReaderTaskEither<AuthRepository, SignoutFailure, void> signOut() {
  return ReaderTaskEither(
    (authRepository) => authRepository.signOut().run(),
  );
}
