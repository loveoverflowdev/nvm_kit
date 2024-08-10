import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:project/domain.dart';

import 'requests.dart';
import 'responses.dart';

final class RemoteProjectRepository implements ProjectRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenProvider;

  RemoteProjectRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenFetcher,
  })  : _apiClient = apiClient,
        _tokenProvider = tokenFetcher;

  @override
  TaskEither<ProjectFailure, Project> getProject({
    required String workspaceId,
    required String projectId,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient.requestJson(
          endpoint: ApiEndpoint(
            uriTemplate:
                '/api/workspaces/:workspace_id/project/get/projects/$projectId',
            requiredAuthorization: true,
            jsonPayload: true,
          ),
          alchemistQuery: AlchemistQuery(
            requestField: requestField ?? ProjectRequestField.all,
          ),
          workspaceId: workspaceId,
          authorization: await _tokenProvider(),
          dataHandler: (json) => _mapResponse(
            ProjectResponse.fromJson(json['data']),
          ),
        );
      },
      (error, stackTrace) => ProjectFailure.fromError(error),
    );
  }

  @override
  TaskEither<ProjectFailure, List<Project>> getProjectList({
    required String workspaceId,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient.requestJson(
          endpoint: ApiEndpoint(
            uriTemplate: '/api/workspaces/:workspace_id/project/get/projects',
            requiredAuthorization: true,
            jsonPayload: true,
          ),
          alchemistQuery: AlchemistQuery(
            requestField: requestField ?? ProjectRequestField.all,
          ),
          workspaceId: workspaceId,
          authorization: await _tokenProvider(),
          dataHandler: (json) => (json['data'] as List)
              .map(
                (json) => _mapResponse(
                  ProjectResponse.fromJson(json['data']),
                ),
              )
              .toList(),
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

  Project _mapResponse(ProjectResponse response) {
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
