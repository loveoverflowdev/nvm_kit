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

  Future<ActiveStructureResponse> getActiveStructureById(String id) {
    return requestJson(
      endpoint: endpoints.getActiveStructureById(id),
      alchemistQuery: AlchemistQuery(
        requestField: ActiveFieldStructureRequestField.all.build(),
      ),
      dataHandler: (json) => ActiveStructureResponse.fromJson(json['data']),
    );
  }

  Future<ActiveStructureResponse> getActiveStructureByCode(String code) {
    return requestJson(
      endpoint: endpoints.getActiveStructureList(),
      alchemistQuery: AlchemistQuery(
        filtering: {
          'activeStructureCode': code,
        },
        requestField: ActiveFieldStructureRequestField.all.build(),
      ),
      dataHandler: (json) {
        final structures = json['data'] as List;

        if (structures.isEmpty) {
          throw Exception('ActiveStructure width the code $code not found');
        }
        final response = ActiveStructureResponse.fromJson(structures[0]);
        return response;
      },
    );
  }
}
