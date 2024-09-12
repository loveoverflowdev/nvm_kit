import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class ProjectRepository {
  TaskEither<ProjectFailure, List<Project>> getProjectList({
    String? requestField,
  });

  TaskEither<ProjectFailure, Project> getProject({
    required String projectId,
    String? requestField,
  });

  // {{domain}}/api/workspaces/{{workspace}}/project/post/projects
  TaskEither<ProjectFailure, void> createProject({
    required ProjectForm form,
  });
}
