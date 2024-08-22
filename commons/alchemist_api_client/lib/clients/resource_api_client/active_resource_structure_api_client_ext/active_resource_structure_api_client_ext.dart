import '../../alchemist_api_client.dart';
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension ActiveResourceStructureApiClientExt on ResourceApiClient {
  Future<List<ActiveResourceStructureResponse>> getActiveResourceStructureList({
    required String workspaceId,
  }) {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-resource/get/structures',
        jsonPayload: true,
        requiredWorkspace: true,
        requiredAuthorization: true,
      ),
      workspaceId: workspaceId,
      alchemistQuery: AlchemistQuery(
        requestField: ActiveFieldStructureRequestField.all,
      ),
      dataHandler: (json) => (json['data'] as Iterable)
          .map(
            (e) => ActiveResourceStructureResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<ActiveResourceStructureResponse> getActiveResourceStructure({
    required String workspaceId,
    required String id,
  }) {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-resource/get/structures/:id',
        jsonPayload: true,
        requireId: true,
        requiredAuthorization: true,
        requiredWorkspace: true,
      ),
      id: id,
      workspaceId: workspaceId,
      dataHandler: (json) => ActiveResourceStructureResponse.fromJson(json['data']),
    );
  }
}
