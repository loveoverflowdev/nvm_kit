import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension ActiveResourceStructureApiClientExt on ResourceApiClient {
  Future<List<ActiveResourceStructureResponse>>
      getActiveResourceStructureList() {
    return requestJson(
      endpoint: endpoints.getActiveResourceStructureList(),
      alchemistQuery: AlchemistQuery(
        requestField: ActiveFieldStructureRequestField.all.build(),
      ),
      dataHandler: (json) => (json['data'] as Iterable)
          .map(
            (e) => ActiveResourceStructureResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<ActiveResourceStructureResponse> getActiveResourceStructure({
    required String id,
  }) {
    return requestJson(
      endpoint: endpoints.getOneActiveResourceStructure(id: id),
      dataHandler: (json) =>
          ActiveResourceStructureResponse.fromJson(json['data']),
    );
  }
}
