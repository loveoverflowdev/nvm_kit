import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart' show TaskEither;
import '../../domain.dart'
    show
        ActiveResourceStructure,
        ActiveResourceStructureFailure,
        ActiveResourceStructureRepository;
import 'request_fields.dart' show ActiveFieldStructureRequestField;
import 'responses.dart' show ActiveResourceStructureResponse;

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
              ActiveResourceStructureResponse.fromJson(json['data']),
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
            requestField: Remote,
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
