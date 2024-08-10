import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:workspace/domain.dart';

import 'requests.dart';
import 'responses.dart';

final class RemoteWorkspaceRepository implements WorkspaceRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenProvider;

  RemoteWorkspaceRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenProvider,
  })  : _apiClient = apiClient,
        _tokenProvider = tokenProvider;

  @override
  TaskEither<WorkspaceFailure, List<Workspace>> getWorkspaceList({
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient.requestJson(
        authorization: await _tokenProvider(),
        endpoint: ApiEndpoint(
          uriTemplate: '/api/workspaces/get/workspaces',
          requiredAuthorization: true,
          jsonPayload: true,
        ),
        alchemistQuery: AlchemistQuery(
          requestField: requestField ?? WorkspaceRequestField.all,
        ),
        dataHandler: (json) => (json['data'] as List? ?? [])
            .map(
              (e) => _mapResponse(
                WorkspaceResponse.fromJson(e),
              ),
            )
            .toList(),
      ),
      (error, stackTrace) => WorkspaceFailure.fromError(error),
    );
  }

  @override
  TaskEither<WorkspaceFailure, Workspace> getWorkspace({
    required String workspaceId,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient.requestJson(
        authorization: await _tokenProvider(),
        workspaceId: workspaceId,
        endpoint: ApiEndpoint(
          uriTemplate: '/api/workspaces/get/workspaces/:workspace_id',
          requiredAuthorization: true,
          jsonPayload: true,
          requiredWorkspace: true,
        ),
        alchemistQuery: AlchemistQuery(
          requestField: requestField ?? WorkspaceRequestField.all,
        ),
        dataHandler: (json) => _mapResponse(
          WorkspaceResponse.fromJson(json),
        ),
      ),
      (error, stackTrace) => WorkspaceFailure.fromError(error),
    );
  }

  Workspace _mapResponse(WorkspaceResponse response) {
    return Workspace(
      name: response.workspaceName,
      namespace: response.namespace,
    );
  }
}
