import 'package:nvm_api_client/nvm_api_client.dart' as api;
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
    String? requestField,
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
      (error, stackTrace) =>
          ProjectFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<ProjectFailure, List<Project>> getProjectList({
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient.getProjectList().then(
              (value) => value.map(_mapResponse).toList(),
            );
      },
      (error, stackTrace) =>
          ProjectFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<ProjectFailure, void> createProject({
    required ProjectForm form,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient.createProject(
          name: form.name.value, 
          description: form.description.value,
        );
      },
      (error, stackTrace) =>
          ProjectFailure.fromError(error, stackTrace: stackTrace,),
    );
  }

  Project _mapResponse(api.ProjectResponse response) {
    return Project(
      id: response.id,
      name: response.projectName,
      description: response.projectDescription,
      createdAt: response.createdAt, // TODO: Update soon
      updatedAt: response.updatedAt,
    );
  }
}
