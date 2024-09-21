import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension ActiveResourceApiClientExt on ResourceApiClient {
  Future<dynamic> createActiveResource({
    required String activeStructureCode,
    required ActiveResourcePayload payload,
  }) {
    return requestJson(
      endpoint: endpoints.createActiveResource(
        activeStructureCode: activeStructureCode,
      ),
      payload: payload.toJson(),
      dataHandler: (json) => json, // now, result just used for logging
    );
  }

  Future<ActiveResourceResponse> getActiveResourceById(
    String id, {
    required String activeStructureCode,
    String? requestField,
  }) {
    return requestJson(
      endpoint: endpoints.getActiveResourceById(
        id,
        activeStructureCode: activeStructureCode,
      ),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ActiveFieldRequestField.all.build(),
      ),
      dataHandler: (json) => ActiveResourceResponse.fromJson(json['data']),
    );
  }

  Future<List<ActiveResourceResponse>> getActiveResourceList({
    required String activeStructureCode,
    required String? projectId,
    String? requestField,
  }) {
    // {{domain}}/api/workspaces/{{workspace}}/active-module/get/resources/tasks
    final Map<String, dynamic> filtering = {};
    if (projectId != null) {
      filtering['projectId'] = projectId;
    }
    return requestJson(
      endpoint: endpoints.getActiveResourceList(
        activeStructureCode: activeStructureCode,
      ),
      alchemistQuery: AlchemistQuery(
        // TODO: Opt request fields
        requestField: requestField ?? ActiveFieldRequestField.all.build(),
        filtering: filtering,
      ),
      dataHandler: (json) => (json['data'] as List)
          .map((e) => ActiveResourceResponse.fromJson(e))
          .toList(),
    );
  }

  Future<dynamic> deleteActiveResourceById(
    String id, {
    required String activeStructureCode,
  }) {
    return requestJson(
      endpoint: endpoints.deleteActiveResourceById(
        id,
        activeStructureCode: activeStructureCode,
      ),
      dataHandler: (json) => json,
    );
  }

  Future<void> updateActiveResource(
    String activeStructureCode,
    String id,
    ActiveResourcePayload payload,
  ) {
    throw UnimplementedError();
  }
}
