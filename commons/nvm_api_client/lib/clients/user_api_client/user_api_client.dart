import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;
import '../token_provider.dart';
import 'requests.dart';
import 'responses.dart';

final class UserApiClient {
  final AlchemistApiClient _alchemistApiClient;
  final TokenProvider _tokenProvider;

  UserApiClient({
    required AlchemistApiClient alchemistApiClient,
    required TokenProvider tokenProvider,
  })  : _alchemistApiClient = alchemistApiClient,
        _tokenProvider = tokenProvider;

  Future<UserResponse> getUserById(
    String userId, {
    String? requestField,
  }) async {
    // {{domain}}/api/user/get/users/605303072528270018?fields=id,username,fullName,email,phone,phoneCountryCode,avatar,thumbnailAvatar,emailVerifiedAt,phoneVerifiedAt,createdAt,updatedAt
    return _requestJson(
      endpoint: endpoints.getUserById(userId),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? UserRequestField.all.build(),
      ),
      dataHandler: (json) => UserResponse.fromJson(json['data']),
    );
  }

  @Deprecated('This code will remove when permission is required')
  Future<List<UserResponse>> getAllUsers({
    String? requestField,
  }) async {
    return _requestJson(
      endpoint: endpoints.getAllUsers(),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? UserRequestField.all.build(),
      ),
      dataHandler: (json) => (json['data'] as List<dynamic>)
          .map((e) => UserResponse.fromJson(e))
          .toList(),
    );
  }

  Future<T> _requestJson<T>({
    required ApiEndpoint endpoint,
    AlchemistQuery? alchemistQuery,
    Map<String, dynamic>? uriParams,
    dynamic payload,
    Map<String, String>? headers,
    String? workspaceId,
    bool refreshTokenOnUnauthorization = true,
    required T Function(dynamic) dataHandler,
  }) async {
    return _alchemistApiClient.requestJson(
      authorization: await _tokenProvider(),
      workspaceId: workspaceId,
      endpoint: endpoint,
      alchemistQuery: alchemistQuery,
      uriParams: uriParams,
      payload: payload,
      headers: headers,
      refreshTokenOnUnauthorization: refreshTokenOnUnauthorization,
      dataHandler: dataHandler,
    );
  }
}
