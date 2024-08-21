import '../../alchemist_api_client.dart';
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension ProjectApiClientExt on ResourceApiClient {
  Future<List<ProjectResponse>> getProjectList({
    required String workspaceId,
    RequestField? requestField,
  }) async {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate: '/api/workspaces/:workspace_id/project/get/projects',
        requiredAuthorization: true,
        jsonPayload: true,
        requiredWorkspace: true,
      ),
      workspaceId: workspaceId,
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ProjectRequestField.all,
      ),
      dataHandler: (json) => (json['data'] as List)
          .map(
            (e) => ProjectResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<ProjectResponse> getProject({
    required String workspaceId,
    required String projectId,
    RequestField? requestField,
  }) async {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate: '/api/workspaces/:workspace_id/project/get/projects/:id',
        requiredAuthorization: true,
        jsonPayload: true,
        requiredWorkspace: true,
        requireId: true,
      ),
      id: projectId,
      workspaceId: workspaceId,
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ProjectRequestField.all,
      ),
      dataHandler: (json) => ProjectResponse.fromJson(json),
    );
  }

  Future<void> createProject({
    required String projectName,
    required String projectDescription,
    required String workspaceId,
  }) {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate: '/api/workspaces/:workspace_id/project/post/projects',
        requiredAuthorization: true,
        jsonPayload: true,
        requiredWorkspace: true,
      ),
      workspaceId: workspaceId,
      payload: {
        "projectName": projectName,
        "projectDescription": projectDescription,
        "icon": "",
      },
      dataHandler: (json) {},
    );
  }
}
