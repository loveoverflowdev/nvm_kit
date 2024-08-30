import 'package:alchemist_api_client/alchemist_api_client.dart';
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;

extension ProjectApiClientExt on ResourceApiClient {
  Future<List<ProjectResponse>> getProjectList({
    String? requestField,
  }) async {
    return requestJson(
      endpoint: endpoints.getProjectList(),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ProjectRequestField.all.build(),
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
    String? requestField,
  }) async {
    return requestJson(
      endpoint: endpoints.getByProjectId(projectId),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ProjectRequestField.all.build(),
      ),
      dataHandler: (json) {
        return ProjectResponse.fromJson(json['data']);
      },
    );
  }

  Future<void> createProject({
    required String projectName,
    required String projectDescription,
  }) {
    return requestJson(
      endpoint: endpoints.createProject(),
      payload: {
        "projectName": projectName,
        "projectDescription": projectDescription,
        "icon": "",
      },
      dataHandler: (json) {},
    );
  }
}
