import '../../alchemist_api_client.dart';
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension ActiveResourceApiClientExt on ResourceApiClient {
  Future<ActiveResourceResponse> getActiveResource({
    required String resourceCode,
    required String id,
    RequestField? requestField,
  }) {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-resource/get/resources/$resourceCode/:id',
        requireId: true,
        requiredWorkspace: true,
        requiredAuthorization: true,
      ),
      id: id,
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ActiveFieldRequestField.all,
      ),
      dataHandler: (json) => ActiveResourceResponse.fromJson(json),
    );
  }

  Future<List<ActiveResourceResponse>> getActiveResourceList({
    required String resourceCode,
    RequestField? requestField,
  }) {
    // {{domain}}/api/workspaces/{{workspace}}/active-resource/get/resources/tasks
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-resource/get/resources/tasks',
        requiredWorkspace: true,
        requiredAuthorization: true,
      ),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ActiveFieldRequestField.all,
      ),
      dataHandler: (json) => (json['data'] as List)
          .map((e) => ActiveResourceResponse.fromJson(e))
          .toList(),
    );
  }
}
