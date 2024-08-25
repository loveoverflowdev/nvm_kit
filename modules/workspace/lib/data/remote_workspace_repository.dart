import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart';
import 'package:workspace/domain.dart';

final class RemoteWorkspaceRepository implements WorkspaceRepository {
  final api.WorkspaceApiClient _apiClient;

  RemoteWorkspaceRepository({
    required api.WorkspaceApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<WorkspaceFailure, void> selectWorkspaceId(String workspaceId) {
    return TaskEither.tryCatch(
      () => _apiClient.selectWorkspaceId(workspaceId),
      (error, stackTrace) => WorkspaceFailure.fromError(error),
    );
  }

  @override
  TaskEither<WorkspaceFailure, List<Workspace>> getWorkspaceList({
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () => _apiClient.getWorkspaceList().then(
            (value) => value
                .map(
                  _mapResponse,
                )
                .toList(),
          ),
      (error, stackTrace) => WorkspaceFailure.fromError(error),
    );
  }

  @override
  TaskEither<WorkspaceFailure, Workspace> getWorkspace({
    required String workspaceId,
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () => _apiClient
          .getWorkspace(
            workspaceId: workspaceId,
          )
          .then(
            _mapResponse,
          ),
      (error, stackTrace) => WorkspaceFailure.fromError(error),
    );
  }

  Workspace _mapResponse(api.WorkspaceResponse response) {
    return Workspace(
      id: response.id,
      // ownerId: response.ownerId,
      // createdAt: response.createdAt,
      // updatedAt: response.updatedAt,
      name: response.workspaceName,
      namespace: response.namespace,
    );
  }
}
