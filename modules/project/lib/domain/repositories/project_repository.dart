import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class ProjectRepository {
  TaskEither<ProjectFailure, List<Project>> getProjectList();

  TaskEither<ProjectFailure, Project> getProject({
    required String projectId,
  });

  // {{domain}}/api/workspaces/{{workspace}}/project/post/projects
  TaskEither<ProjectFailure, Project> createProject({
    required String projectName,
    required String rojectDescription,
    String? icon,
  });
}
