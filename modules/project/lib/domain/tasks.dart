import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';

import 'entities.dart';
import 'repositories.dart';

ReaderTaskEither<ProjectRepository, ProjectFailure, Project> createProjectTask({
  required ProjectForm form,
  required String workspaceId,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .createProject(
            projectName: form.name.value,
            rojectDescription: form.description.value,
          )
          .run(),
    );

ReaderTaskEither<ProjectRepository, ProjectFailure, List<Project>>
    getProjectListTask({
  required String workspaceId,
  RequestField? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getProjectList(
              )
              .map(
                (response) => response.toList(),
              )
              .run(),
        );

ReaderTaskEither<ProjectRepository, Exception, Project> getProjectTask({
  required String workspaceId,
  required String projectId,
  RequestField? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getProject(
            projectId: projectId,
          )
          .run(),
    );
