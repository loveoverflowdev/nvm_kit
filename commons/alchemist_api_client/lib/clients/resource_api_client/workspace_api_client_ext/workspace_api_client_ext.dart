import '../../alchemist_api_client.dart';
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension WorkspaceApiClientExt on ResourceApiClient {
  Future<List<WorkspaceResponse>> getWorkspaceList({
    RequestField? requestField,
  }) async {
    return requestJson(
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
    return requestJson(
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
}
