
import 'package:alchemist_api_client/src/request_field.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:project/domain.dart';

final class FakeProjectRepository implements ProjectRepository {
  @override
  TaskEither<ProjectFailure, Project> createProject({required String projectName, required String rojectDescription, required String workspaceId, String? icon}) {
    // TODO: implement createProject
    throw UnimplementedError();
  }

  @override
  TaskEither<ProjectFailure, Project> getProject({required String workspaceId, required String projectId, RequestField? requestField}) {
    // TODO: implement getProject
    throw UnimplementedError();
  }

  @override
  TaskEither<ProjectFailure, List<Project>> getProjectList({required String workspaceId, RequestField? requestField}) {
    // TODO: implement getProjectList
    throw UnimplementedError();
  }
}
