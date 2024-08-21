import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'authentication_credentials.dart';

class AuthenticationClient {
  final AlchemistApiClient _alchemistApiClient;
  final TokenStorage _tokenStorage;

  AuthenticationClient({
    required AlchemistApiClient alchemistApiClient,
    required TokenStorage tokenStorage,
  })  : _alchemistApiClient = alchemistApiClient,
        _tokenStorage = tokenStorage;

  Future<AuthenticationCredentials> signInWithUsernameAndPassword({
    required String username,
    required String password,
  }) async {
    final credentials = await _alchemistApiClient.requestJson(
      endpoint: ApiEndpoint(
        uriTemplate: '/api/auth/post/authenticate',
        jsonPayload: true,
      ),
      payload: {
        'username': username,
        'password': password,
      },
      dataHandler: (json) {
        final credentials = AuthenticationCredentials.fromJson(json);

        return credentials;
      },
    );
    await _tokenStorage.save(
      userId: credentials.userId,
      accessToken: credentials.accessToken,
      refreshToken: credentials.refreshToken,
    );
    return credentials;
  }

  // Future<T> requestJson<T>({
  //   required ApiEndpoint endpoint,
  //   String? workspaceId,
  //   AlchemistQuery? alchemistQuery,
  //   Map<String, dynamic>? uriParams,
  //   dynamic payload,
  //   Map<String, String>? headers,
  //   bool refreshTokenOnUnauthorization = true,
  //   String? authorization,
  //   required T Function(dynamic) dataHandler,
  // }) async {
  //   return _alchemistApiClient.requestJson(
  //     authorization: await _tokenProvider(),
  //     endpoint: endpoint,
  //     workspaceId: workspaceId,
  //     alchemistQuery: alchemistQuery,
  //     uriParams: uriParams,
  //     payload: payload,
  //     headers: headers,
  //     refreshTokenOnUnauthorization: refreshTokenOnUnauthorization,
  //     dataHandler: dataHandler,
  //   );
  // }
}
