import 'package:alchemist_api_client/alchemist_api_client.dart' as api;
import 'package:fpdart/fpdart.dart';
import 'package:project/domain.dart';

final class RemoteProjectRepository implements ProjectRepository {
  final api.ResourceApiClient _apiClient;

  RemoteProjectRepository({
    required api.ResourceApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<ProjectFailure, Project> getProject({
    required String projectId,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getProject(
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
  TaskEither<ProjectFailure, List<Project>> getProjectList() {
    return TaskEither.tryCatch(
      () async {
        return _apiClient.getProjectList().then(
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
      createdAt: response.createdAt, // TODO: Update soon
      updatedAt: response.updatedAt,
    );
  }
}
