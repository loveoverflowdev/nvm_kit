import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'failures/failures.dart';
import 'params/params.dart';
import 'responses/responses.dart';

sealed class WorkspaceRepository {
  TaskEither<WorkspaceFailure, List<WorkspaceResponse>> getWorkspaceList({
    RequestField? requestField,
  });
  TaskEither<WorkspaceFailure, WorkspaceResponse> getWorkspace({
    required String workspaceId,
    RequestField? requestField,
  });
}

class RemoteWorkspaceRepository implements WorkspaceRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenFetcher;

  RemoteWorkspaceRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenFetcher,
  })  : _apiClient = apiClient,
        _tokenFetcher = tokenFetcher;

  @override
  TaskEither<WorkspaceFailure, List<WorkspaceResponse>> getWorkspaceList({
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient.requestJson(
        authorization: await _tokenFetcher(),
        endpoint: ApiEndpoint(
          uriTemplate: '/api/workspaces/get/workspaces',
          requiredAuthorization: true,
          jsonPayload: true,
        ),
        alchemistQuery: AlchemistQuery(
          requestField: requestField ??
              RequestField.children(
                [
                  WorkspaceRequestField.id,
                  WorkspaceRequestField.workspaceName,
                  WorkspaceRequestField.namespace,
                  WorkspaceRequestField.ownerId,
                  WorkspaceRequestField.activeMemberIds,
                  WorkspaceRequestField.pendingMemberIds,
                  WorkspaceRequestField.createdAt,
                  WorkspaceRequestField.updatedAt,
                  WorkspaceRequestField.workspaceCapacity.addChildren([
                    WorkspaceRequestField.member,
                    WorkspaceRequestField.project,
                  ])
                ],
              ),
        ),
        dataHandler: (json) => (json['data'] as List? ?? [])
            .map((e) => WorkspaceResponse.fromJson(e))
            .toList(),
      ),
      (error, stackTrace) => WorkspaceFailure.fromError(error),
    );
  }

  @override
  TaskEither<WorkspaceFailure, WorkspaceResponse> getWorkspace({
    required String workspaceId,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient.requestJson(
        authorization: await _tokenFetcher(),
        workspaceId: workspaceId,
        endpoint: ApiEndpoint(
          uriTemplate: '/api/workspaces/get/workspaces/:workspace_id',
          requiredAuthorization: true,
          jsonPayload: true,
          requiredWorkspace: true,
        ),
        alchemistQuery: AlchemistQuery(
          requestField: requestField ??
              RequestField.children(
                [
                  WorkspaceRequestField.id,
                  WorkspaceRequestField.workspaceName,
                  WorkspaceRequestField.namespace,
                  WorkspaceRequestField.ownerId,
                  WorkspaceRequestField.activeMemberIds,
                  WorkspaceRequestField.pendingMemberIds,
                  WorkspaceRequestField.createdAt,
                  WorkspaceRequestField.updatedAt,
                  WorkspaceRequestField.workspaceCapacity.addChildren([
                    WorkspaceRequestField.member,
                    WorkspaceRequestField.project,
                  ])
                ],
              ),
        ),
        dataHandler: (json) => WorkspaceResponse.fromJson(json),
      ),
      (error, stackTrace) => WorkspaceFailure.fromError(error),
    );
  }
}
