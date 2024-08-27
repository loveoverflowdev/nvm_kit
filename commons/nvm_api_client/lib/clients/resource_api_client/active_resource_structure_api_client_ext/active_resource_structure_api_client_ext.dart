import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension ActiveStructureApiClientExt on ResourceApiClient {
  Future<List<ActiveStructureResponse>> getActiveStructureList() {
    return requestJson(
      endpoint: endpoints.getActiveStructureList(),
      alchemistQuery: AlchemistQuery(
        requestField: ActiveFieldStructureRequestField.all.build(),
      ),
      dataHandler: (json) => (json['data'] as Iterable)
          .map(
            (e) => ActiveStructureResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<ActiveStructureResponse> getActiveStructure({
    required String id,
  }) {
    return requestJson(
      endpoint: endpoints.getOneActiveStructure(id: id),
      dataHandler: (json) => ActiveStructureResponse.fromJson(json['data']),
    );
  }
}
