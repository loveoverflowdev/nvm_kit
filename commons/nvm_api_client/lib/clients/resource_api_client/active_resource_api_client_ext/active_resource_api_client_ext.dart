import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension ActiveResourceApiClientExt on ResourceApiClient {
  Future<ActiveResourceResponse> getActiveResource({
    required String activeStructureCode,
    required String id,
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
    String? requestField,
  }) {
    // {{domain}}/api/workspaces/{{workspace}}/active-module/get/resources/tasks
    return requestJson(
      endpoint: endpoints.getActiveResourceList(
          activeStructureCode: activeStructureCode),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ActiveFieldRequestField.all.build(),
      ),
      dataHandler: (json) => (json['data'] as List)
          .map((e) => ActiveResourceResponse.fromJson(e))
          .toList(),
    );
  }
}
