import '../../alchemist_api_client.dart';
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension ProjectApiClientExt on ResourceApiClient {
  Future<List<ProjectResponse>> getProjectList({
    RequestField? requestField,
  }) async {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate: '/api/workspaces/:workspace_id/project/get/projects',
        requiredAuthorization: true,
        requiredWorkspace: true,
      ),
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
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ProjectRequestField.all,
      ),
      dataHandler: (json) => ProjectResponse.fromJson(json),
    );
  }

  Future<void> createProject({
    required String projectName,
    required String projectDescription,
  }) {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate: '/api/workspaces/:workspace_id/project/post/projects',
        requiredAuthorization: true,
        jsonPayload: true,
        requiredWorkspace: true,
      ),
      payload: {
        "projectName": projectName,
        "projectDescription": projectDescription,
        "icon": "",
      },
      dataHandler: (json) {},
    );
  }
}
