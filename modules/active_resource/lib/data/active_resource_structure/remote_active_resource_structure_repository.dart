import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart' show TaskEither;
import '../../domain.dart'
    show ActiveFieldStructure, ActiveResourceStructure, ActiveResourceStructureFailure, ActiveResourceStructureRepository;

import 'requests/requests.dart';
import 'responses.dart' show ActiveResourceStructureResponse;

final class RemoteActiveResourceStructureRepository
    implements ActiveResourceStructureRepository {
  final Future<String?> Function() _tokenFetcher;
  final ApiClient _apiClient;

  RemoteActiveResourceStructureRepository({
    required final ApiClient apiClient,
    required Future<String?> Function() tokenProvider,
  })  : _apiClient = apiClient,
        _tokenFetcher = tokenProvider;

  @override
  TaskEither<ActiveResourceStructureFailure, ActiveResourceStructure>
      getActiveResourceStructure({
    required String id,
  }) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient.requestJson(
          authorization: await _tokenFetcher(),
          endpoint: ApiEndpoint(
            uriTemplate:
                '/api/workspaces/:workspace_id/active-resource/get/structures/$id',
            jsonPayload: true,
          ),
          alchemistQuery: AlchemistQuery(
            requestField: ActiveFieldStructureRequestField.all,
          ),
          dataHandler: (json) =>
              _mapResponse(ActiveResourceStructureResponse.fromJson(json['data'])),
        );
      },
      (error, stackTrace) => ActiveResourceStructureFailure.fromError(
        error,
      ),
    );
  }

  @override
  TaskEither<ActiveResourceStructureFailure, List<ActiveResourceStructure>>
      getActiveResourceStructureList() {
    return TaskEither.tryCatch(
      () async {
        return _apiClient.requestJson(
          authorization: await _tokenFetcher(),
          endpoint: ApiEndpoint(
            uriTemplate:
                '/api/workspaces/:workspace_id/active-resource/get/structures',
            jsonPayload: true,
          ),
          alchemistQuery: AlchemistQuery(
            requestField: ActiveFieldStructureRequestField.all,
          ),
          dataHandler: (json) => (json['data'] as Iterable)
              .map((e) => _mapResponse(ActiveResourceStructureResponse.fromJson(e)),)
              .toList(),
        );
      },
      (error, stackTrace) => ActiveResourceStructureFailure.fromError(
        error,
      ),
    );
  }

  ActiveResourceStructure _mapResponse(ActiveResourceStructureResponse response) {
    return ActiveResourceStructure(
      code: response.code, 
      id: response.id, 
      title: response.title, 
      fields: response.fields.map(
        (e) => ActiveFieldStructure(
          id: e.id,
          key: e.key,
          type: e.type,
          title: e.title,
          order: e.order,
          placeholder: '', 
          description: '', 
          isRequired: e.isRequired,
          isUnique: e.isUnique, 
          isMultipleValued: e.isMultipleValued, 
          searchable: e.searchable, 
          sortable: e.sortable, 
          filterable: e.filterable, 
          isConcrete: e.isConcrete, 
          showInExport: e.showInExport, 
          showInImport: e.showInImport, 
          createdBy: e.createdBy, 
          updatedBy: e.updatedBy, 
          createdAt: e.createdAt, 
          updatedAt: e.updatedAt,
        ),
      ).toList(),
    );
  }
}
