import 'package:fpdart/fpdart.dart';
import 'package:nvm_core/common.dart';

import 'entities.dart';

abstract interface class ProjectRepository {
  TaskEither<Failure, List<Project>> getProjectList({
    required String workspaceId,
    RequestField? requestField,
  });

  TaskEither<Failure, Project> getProject({
    required String workspaceId,
    required String projectId,
    RequestField? requestField,
  });

  // {{domain}}/api/workspaces/{{workspace}}/project/post/projects
  TaskEither<Failure, Project> createProject({
    required String projectName,
    required String rojectDescription,
    required String workspaceId,
    String? icon,
  });
}
