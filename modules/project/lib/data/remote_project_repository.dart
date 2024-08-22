import 'package:alchemist_api_client/alchemist_api_client.dart' as api;
import 'package:fpdart/fpdart.dart';
import 'package:project/domain.dart';

final class RemoteProjectRepository implements ProjectRepository {
  late final api.ResourceApiClient _apiClient;

  RemoteProjectRepository();

  set apiClient(api.ResourceApiClient client) {
    _apiClient = client;
  }

  @override
  TaskEither<ProjectFailure, Project> getProject({
    required String workspaceId,
    required String projectId,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getProject(
              workspaceId: workspaceId,
              projectId: projectId,
            )
            .then(
              _mapResponse,
            );
      },
      (error, stackTrace) => ProjectFailure.fromError(error),
    );
  }

  @override
  TaskEither<ProjectFailure, List<Project>> getProjectList({
    required String workspaceId,
  }) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient
            .getProjectList(
              workspaceId: workspaceId,
            )
            .then(
              (value) => value.map(_mapResponse).toList(),
            );
      },
      (error, stackTrace) => ProjectFailure.fromError(error),
    );
  }

  @override
  TaskEither<ProjectFailure, Project> createProject({
    required String projectName,
    required String rojectDescription,
    required String workspaceId,
    String? icon,
  }) {
    // TODO: implement createProject

    throw UnimplementedError();
  }

  Project _mapResponse(api.ProjectResponse response) {
    return Project(
      id: response.id,
      name: response.projectName,
      description: response.projectDescription,
      teamIds: response.teamIds,
      createdAt: null, // response.createdAt, TODO: Update soon
      updatedAt: null, // response.updatedAt,
    );
  }
}
