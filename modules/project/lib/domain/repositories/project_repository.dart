import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class ProjectRepository {
  TaskEither<ProjectFailure, List<Project>> getProjectList({
    required String workspaceId,
  });

  TaskEither<ProjectFailure, Project> getProject({
    required String workspaceId,
    required String projectId,
  });

  // {{domain}}/api/workspaces/{{workspace}}/project/post/projects
  TaskEither<ProjectFailure, Project> createProject({
    required String projectName,
    required String rojectDescription,
    required String workspaceId,
    String? icon,
  });
}
