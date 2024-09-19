import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;
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
    String? requestField,
  }) async {
    return _requestJson(
      endpoint: endpoints.getWorkspaceList(),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? WorkspaceRequestField.all.build(),
      ),
      dataHandler: (json) => (json['data'] as List)
          .map(
            (e) => WorkspaceResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<WorkspaceResponse> getWorkspaceById(String workspaceId, {
    String? requestField,
  }) async {
    return _requestJson(
      endpoint: endpoints.getWorkspaceById(workspaceId),
      workspaceId: workspaceId,
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? WorkspaceRequestField.all.build(),
      ),
      dataHandler: (json) => WorkspaceResponse.fromJson(json['data']),
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
