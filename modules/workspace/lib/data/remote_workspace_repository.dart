import 'package:alchemist_api_client/alchemist_api_client.dart' as api;
import 'package:fpdart/fpdart.dart';
import 'package:workspace/domain.dart';

final class RemoteWorkspaceRepository implements WorkspaceRepository {
  final api.ResourceApiClient _apiClient;

  RemoteWorkspaceRepository({
    required api.ResourceApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<WorkspaceFailure, List<Workspace>> getWorkspaceList() {
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
      name: response.workspaceName,
      namespace: response.namespace,
    );
  }
}
