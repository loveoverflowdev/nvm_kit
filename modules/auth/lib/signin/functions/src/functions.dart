import 'package:fpdart/fpdart.dart';
import 'package:nvm_auth/nvm_auth.dart';
import 'models/models.dart';

// final SigninFunction signinFunction = ({
//   required SigninForm form,
// }) =>
//     TaskEither.right(SigninBlock());

// typedef SigninFunction = TaskEither<SigninFailure, SigninBlock> Function({
//   required SigninForm form,
// });

ReaderTaskEither<AuthRepository, SigninFailure, SigninBlock> signIn({
  required Username username,
  required Password password,
}) =>
    ReaderTaskEither(
      (authRepository) => authRepository
          .signIn(
            username: username,
            password: password,
          )
          .map(
            (response) => SigninBlock(
              accessToken: response.accessToken,
              refreshToken: response.refreshToken,
            ),
          )
          .run(),
    );

ReaderTaskEither<AuthRepository, SignoutFailure, void> signOut() {
  return ReaderTaskEither(
    (authRepository) => authRepository.signOut().run(),
  );
}
