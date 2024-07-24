import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:formz/formz.dart';
import 'package:fpdart/fpdart.dart';
import 'failures/failures.dart';
import 'params/params.dart';
import 'responses/responses.dart';
import 'storages/storages.dart';

sealed class AuthRepository {
  const AuthRepository();

  TaskEither<SigninFailure, SigninResponse> signIn({
    required Username username,
    required Password password,
  });

  TaskEither<SignoutFailure, void> signOut();
}

class NvmAuthRepository extends AuthRepository {
  final TokenStorage _tokenStorage;
  final ApiClient _apiClient;

  NvmAuthRepository({
    required final TokenStorage tokenStorage,
    required final ApiClient apiClient,
  })  : _apiClient = apiClient,
        _tokenStorage = tokenStorage;

  @override
  TaskEither<SigninFailure, SigninResponse> signIn({
    required Username username,
    required Password password,
  }) =>
      !Formz.validate([username, password])
          ? TaskEither.left(
              SigninFailure.invalidParams(
                passwordError: password.displayError?.value,
                usernameError: username.displayError?.value,
              ),
            )
          : TaskEither.tryCatch(
              () => _apiClient
                  .requestJson(
                endpoint: ApiEndpoint(
                  uriTemplate: '/api/auth/post/authenticate',
                  jsonPayload: true,
                ),
                payload: {
                  'username': username.value,
                  'password': password.value,
                },
                dataHandler: (json) => SigninResponse.fromJson(json),
              )
                  .then(
                (response) {
                  _tokenStorage.save(
                    accessToken: response.accessToken,
                    refreshToken: response.refreshToken,
                  );
                  return response;
                },
              ),
              (error, stackTrace) => SigninFailure.fromError(error),
            );

  @override
  TaskEither<SignoutFailure, void> signOut() => TaskEither.tryCatch(
        () => _tokenStorage.clear(),
        (error, stackTrace) => SignoutFailure.fromError(error),
      );

  // Future<bool> _hasAccessToken() {
  //   return _tokenStorage
  //       .readAccessToken()
  //       .then((token) => token?.isNotEmpty == true);
  // }

  // Future<void> _refreshToken() async {
  //   final refreshToken = await _tokenStorage.readRefreshToken();
  //   if (refreshToken != null) {
  //     try {
  //       final authReponse = await _apiClient.requestJson(
  //         endpoint: ApiEndpoint(
  //           uriTemplate: '/api/auth/post/refresh_token',
  //           jsonPayload: true,
  //         ),
  //         payload: {
  //           'refreshToken': refreshToken,
  //         },
  //         dataHandler: (json) => SigninResponse.fromJson(json),
  //         refreshTokenOnUnauthorization: false,
  //       );
  //       await _updateToken(
  //         accessToken: authReponse.accessToken,
  //         refreshToken: authReponse.refreshToken,
  //       );
  //     } on AlchemistApiRequestFailure catch (failure) {
  //       await _deleteToken();
  //     }
  //   }
  // }
}
