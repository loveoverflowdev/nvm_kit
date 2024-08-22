import '../../alchemist_api_client.dart';
import '../../token_provider.dart';
import 'requests.dart';
import 'responses.dart';

final class RolesBoardApiClient {
  final AlchemistApiClient _alchemistApiClient;
  final TokenProvider _tokenProvider;

  RolesBoardApiClient({
    required AlchemistApiClient alchemistApiClient,
    required TokenProvider tokenProvider,
  }) : 
  _alchemistApiClient = alchemistApiClient, 
  _tokenProvider = tokenProvider;


  Future<List<RolesBoardResponse>> getRolesBoardList({
    required String workspaceId,
    required String resourceCode,
    required String resourceId,
    RequestField? requestField,
  }) async {
    // {{domain}}/api/workspaces/{{workspace}}/active-resource/resources/tasks/664724104737195066/features/widget-comment/get/comments
    return _requestJson(
      endpoint: ApiEndpoint(
          uriTemplate: '/api/workspaces/:workspace_id/widget/board-roles/get',
          requiredAuthorization: true,
          jsonPayload: true,
        ),
        alchemistQuery: AlchemistQuery(
          requestField: requestField ?? RolesBoardRequestField.all,
        ),
        workspaceId: workspaceId,
        dataHandler: (json) => (json['data'] as List)
          .map(
            (e) => RolesBoardResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<void> createRolesBoard({
    required String workspaceId,
    required String resourceCode,
    required String resourceId,
    required RolesBoardPayload payload,
  }) async {
    // {{domain}}/api/workspaces/{{workspace}}/widget/board-roles/post
    return _requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/widget/board-roles/post',
        requiredWorkspace: true,
        requiredAuthorization: true,
        jsonPayload: true,
      ),
      payload: payload.toJson(),
      workspaceId: workspaceId,
      dataHandler: (json) => {},
    );
  }

  Future<T> _requestJson<T>({
    required ApiEndpoint endpoint,
    String? workspaceId,
    String? id,
    AlchemistQuery? alchemistQuery,
    Map<String, dynamic>? uriParams,
    dynamic payload,
    Map<String, String>? headers,
    bool refreshTokenOnUnauthorization = true,
    required T Function(dynamic) dataHandler,
  }) async {
    return _alchemistApiClient.requestJson(
      authorization: await _tokenProvider(),
      id: id,
      endpoint: endpoint,
      workspaceId: workspaceId,
      alchemistQuery: alchemistQuery,
      uriParams: uriParams,
      payload: payload,
      headers: headers,
      refreshTokenOnUnauthorization: refreshTokenOnUnauthorization,
      dataHandler: dataHandler,
    );
  }
}
