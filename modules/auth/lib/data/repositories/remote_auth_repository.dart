import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:auth/domain.dart';
import 'package:formz/formz.dart';
import 'package:fpdart/fpdart.dart';

import '../responses.dart';
import '../storages.dart';

final class RemoteAuthRepository implements AuthRepository {
  final TokenStorage _tokenStorage;
  final ApiClient _apiClient;

  RemoteAuthRepository({
    required final TokenStorage tokenStorage,
    required final ApiClient apiClient,
  })  : _apiClient = apiClient,
        _tokenStorage = tokenStorage;

  @override
  TaskEither<AuthFailure, AuthCredential> signIn({
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
              (error, stackTrace) => AuthFailure.fromError(error),
            );

  @override
  TaskEither<AuthFailure, void> signOut() => TaskEither.tryCatch(
        () => _tokenStorage.clear(),
        (error, stackTrace) => AuthFailure.fromError(error),
      );

  AuthCredential _mapResponse(SigninResponse response) {
    return AuthCredential(
        //
        );
  }

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
