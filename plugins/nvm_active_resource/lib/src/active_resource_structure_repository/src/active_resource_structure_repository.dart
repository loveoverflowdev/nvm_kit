import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'failures/failures.dart';
import 'responses/responses.dart';

sealed class ActiveResourceStructureRepository {
  TaskEither<ActiveResourceStructureFailure, ActiveResourceStructureResponse>
      getActiveResourceStructure({
    required String id,
  });

  TaskEither<ActiveResourceStructureFailure,
      List<ActiveResourceStructureResponse>> getActiveResourceStructureList();
}

final class RemoteActiveResourceStructureRepository
    implements ActiveResourceStructureRepository {
  final Future<String> Function() _tokenFetcher;
  final ApiClient _apiClient;

  RemoteActiveResourceStructureRepository({
    required final ApiClient apiClient,
    required Future<String> Function() tokenFetcher,
  })  : _apiClient = apiClient,
        _tokenFetcher = tokenFetcher;

  @override
  TaskEither<ActiveResourceStructureFailure, ActiveResourceStructureResponse>
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
            requestField: RequestField.children(
              [
                RequestField.name('id'),
                RequestField.name('resourceCode'),
                RequestField.name('resourceTitle'),
                RequestField.name('updatedBy'),
                RequestField.name('createdAt'),
                RequestField.name('updatedAt'),
                RequestField(
                  name: 'activeFields',
                  children: [
                    RequestField.name('id'),
                    RequestField.name('fieldCode'),
                    RequestField.name('fieldTitle'),
                    RequestField.name('fieldType'),
                    RequestField.name('resourceStructureId'),
                  ],
                ),
                RequestField(
                  name: 'createdBy',
                  children: [
                    RequestField.name('id'),
                    RequestField.name('username'),
                    RequestField.name('email'),
                    RequestField.name('phone'),
                  ],
                ),
              ],
            ),
          ),
          dataHandler: (json) =>
              ActiveResourceStructureResponse.fromJson(json['data']),
        );
      },
      (error, stackTrace) => ActiveResourceStructureFailure.fromError(
        error,
      ),
    );
  }

  @override
  TaskEither<ActiveResourceStructureFailure,
      List<ActiveResourceStructureResponse>> getActiveResourceStructureList() {
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
            requestField: RequestField.children(
              [
                RequestField.name('id'),
                RequestField.name('resourceCode'),
                RequestField.name('resourceTitle'),
                RequestField.name('updatedBy'),
                RequestField.name('createdAt'),
                RequestField.name('updatedAt'),
                RequestField(
                  name: 'activeFields',
                  children: [
                    RequestField.name('id'),
                    RequestField.name('fieldCode'),
                    RequestField.name('fieldTitle'),
                    RequestField.name('fieldType'),
                    RequestField.name('resourceStructureId'),
                  ],
                ),
                RequestField(
                  name: 'createdBy',
                  children: [
                    RequestField.name('id'),
                    RequestField.name('username'),
                    RequestField.name('email'),
                    RequestField.name('phone'),
                  ],
                ),
              ],
            ),
          ),
          dataHandler: (json) => (json['data'] as Iterable)
              .map((e) => ActiveResourceStructureResponse.fromJson(e))
              .toList(),
        );
      },
      (error, stackTrace) => ActiveResourceStructureFailure.fromError(
        error,
      ),
    );
  }
}
