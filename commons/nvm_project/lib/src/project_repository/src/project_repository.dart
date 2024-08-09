import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'failures/failures.dart';
import 'params/params.dart';
import 'responses/responses.dart';

sealed class ProjectRepository {
  factory ProjectRepository.remote({
    required ApiClient apiClient,
    required Future<String?> Function() tokenFetcher,
  }) = RemoteProjectRepository;

  TaskEither<Exception, List<ProjectResponse>> getProjectList({
    required String workspaceId,
    RequestField? requestField,
  });

  TaskEither<Exception, ProjectResponse> getProject({
    required String workspaceId,
    required String projectId,
    RequestField? requestField,
  });

  // {{domain}}/api/workspaces/{{workspace}}/project/post/projects
  TaskEither<Exception, ProjectResponse> createProject({
    required String projectName,
    required String rojectDescription,
    required String workspaceId,
    String? icon,
  });
}

final class RemoteProjectRepository implements ProjectRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenFetcher;

  RemoteProjectRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenFetcher,
  })  : _apiClient = apiClient,
        _tokenFetcher = tokenFetcher;

  @override
  TaskEither<ProjectFailure, ProjectResponse> getProject({
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
          authorization: await _tokenFetcher(),
          dataHandler: (json) => ProjectResponse.fromJson(json['data']),
        );
      },
      (error, stackTrace) => ProjectFailure.fromError(error),
    );
  }

  @override
  TaskEither<ProjectFailure, List<ProjectResponse>> getProjectList({
    required String workspaceId,
    RequestField? requestField,
  }) {
    // TODO: implement getProjectList
    throw UnimplementedError();
  }

  @override
  TaskEither<ProjectFailure, ProjectResponse> createProject({
    required String projectName,
    required String rojectDescription,
    required String workspaceId,
    String? icon,
  }) {
    // TODO: implement createProject
    throw UnimplementedError();
  }
}
