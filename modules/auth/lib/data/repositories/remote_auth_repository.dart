import 'package:nvm_api_client/nvm_api_client.dart' as api
    show AuthenticationClient, AuthenticationCredentials;
import 'package:auth/domain.dart';
import 'package:formz/formz.dart';
import 'package:fpdart/fpdart.dart';

final class RemoteAuthRepository implements AuthRepository {
  final api.AuthenticationClient _apiClient;

  RemoteAuthRepository({
    required api.AuthenticationClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<AuthFailure, AuthCredentials> signIn({
    required Username username,
    required Password password,
  }) =>
      !Formz.validate([username, password])
          ? TaskEither.left(
              AuthFailure.invalidParams(
                passwordError: password.displayError?.message,
                usernameError: username.displayError?.message,
              ),
            )
          : TaskEither.tryCatch(
              () => _apiClient
                  .signInWithUsernameAndPassword(
                    username: username.value,
                    password: password.value,
                  )
                  .then(
                    _mapResponse,
                  ),
              (error, stackTrace) => AuthFailure.fromError(error),
            );

  @override
  TaskEither<AuthFailure, void> signOut() => TaskEither.tryCatch(
        () => _apiClient.signOut(),
        (error, stackTrace) => AuthFailure.fromError(error),
      );

  AuthCredentials _mapResponse(api.AuthenticationCredentials response) {
    return AuthCredentials(
      accessToken: response.accessToken,
      refreshToken: response.refreshToken,
      userId: response.userId,
    );
  }
}
