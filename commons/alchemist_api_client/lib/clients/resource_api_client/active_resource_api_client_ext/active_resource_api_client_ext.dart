import '../../alchemist_api_client.dart';
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension ActiveResourceApiClientExt on ResourceApiClient {
  Future<ActiveResourceResponse> getActiveResource({
    required String resourceCode,
    required String id,
    required String workspaceId,
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
      workspaceId: workspaceId,
      id: id,
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ActiveFieldRequestField.all,
      ),
      dataHandler: (json) => ActiveResourceResponse.fromJson(json['data']),
    );
  }

  Future<List<ActiveResourceResponse>> getActiveResourceList({
    required String resourceCode,
    required String workspaceId,
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
      workspaceId: workspaceId,
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? ActiveFieldRequestField.all,
      ),
      dataHandler: (json) => (json as List)
          .map((e) => ActiveResourceResponse.fromJson(e))
          .toList(),
    );
  }
  /*
   @override
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResource({
    required String resourceCode,
    required String id,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient.requestJson(
          authorization: await _tokenProvider(),
          endpoint: ApiEndpoint(
            uriTemplate:
                '/api/workspaces/:workspace_id/active-resource/get/resources/$resourceCode/$id',
          ),
          alchemistQuery: AlchemistQuery(
            requestField: requestField ??
                RequestField.children(
                  [
                    ActiveFieldRequestField.id,
                    ActiveFieldRequestField.attributes,
                    ActiveFieldRequestField.project.addChildren([
                      ActiveFieldRequestField.projectName,
                      ActiveFieldRequestField.id,
                    ]),
                    ActiveFieldRequestField.createdByUser.addChildren([
                      ActiveFieldRequestField.username,
                      ActiveFieldRequestField.id,
                    ]),
                    ActiveFieldRequestField.labels.addChildren([
                      ActiveFieldRequestField.labelName,
                      ActiveFieldRequestField.id,
                    ]),
                  ],
                ),
          ),
          dataHandler: (json) => _mapResponse(
            ActiveResourceResponse.fromJson(json['data']),
          ),
        );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(error),
    );
  }

  @override
  TaskEither<ActiveResourceFailure, List<ActiveResource>>
      getActiveResourceList({
    required String resourceCode,
    RequestField? requestField,
  }) {
    // TODO: implement getActiveResourceList
    throw UnimplementedError();
  }

  */
}

/*
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
*/