import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class ProjectRepository {
  TaskEither<ProjectFailure, List<Project>> getProjectList({
    required String workspaceId,
    RequestField? requestField,
  });

  TaskEither<ProjectFailure, Project> getProject({
    required String workspaceId,
    required String projectId,
    RequestField? requestField,
  });

  // {{domain}}/api/workspaces/{{workspace}}/project/post/projects
  TaskEither<ProjectFailure, Project> createProject({
    required String projectName,
    required String rojectDescription,
    required String workspaceId,
    String? icon,
  });
}
