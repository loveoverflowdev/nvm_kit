
import '../alchemist_api_client.dart';
import '../token_provider.dart';
import 'requests.dart';
import 'responses.dart';
import 'workspace_storage.dart';

final class WorkspaceApiClient {
  final AlchemistApiClient _alchemistApiClient;
  final TokenProvider _tokenProvider;
  final WorkspaceStorage _workspaceStorage;

  WorkspaceApiClient({
    required AlchemistApiClient alchemistApiClient,
    required TokenProvider tokenProvider,
    required WorkspaceStorage workspaceStorage,
  })  : _alchemistApiClient = alchemistApiClient,
        _tokenProvider = tokenProvider,
        _workspaceStorage = workspaceStorage;
  
  Future<void> selectWorkspaceId(String workspaceId) {
    return _workspaceStorage.saveWorkspaceId(workspaceId);
  }

  Future<List<WorkspaceResponse>> getWorkspaceList({
    RequestField? requestField,
  }) async {
    return _requestJson(
      endpoint: ApiEndpoint(
        uriTemplate: '/api/workspaces/get/workspaces',
        requiredAuthorization: true,
        jsonPayload: true,
      ),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? WorkspaceRequestField.all,
      ),
      dataHandler: (json) => (json['data'] as List)
          .map(
            (e) => WorkspaceResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<WorkspaceResponse> getWorkspace({
    required String workspaceId,
    RequestField? requestField,
  }) async {
    return _requestJson(
      endpoint: ApiEndpoint(
        uriTemplate: '/api/workspaces/get/workspaces/:workspace_id',
        requiredAuthorization: true,
        jsonPayload: true,
        requiredWorkspace: true,
      ),
      workspaceId: workspaceId,
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? WorkspaceRequestField.all,
      ),
      dataHandler: (json) => WorkspaceResponse.fromJson(json),
    );
  }
  
  Future<T> _requestJson<T>({
    required ApiEndpoint endpoint,
    String? id,
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
      id: id,
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
