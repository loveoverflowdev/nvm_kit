import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:project/domain.dart';

ReaderTaskEither<ProjectRepository, ProjectFailure, Project> createProjectTask({
  required ProjectForm form,
  required String workspaceId,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .createProject(
            projectName: form.name.value,
            rojectDescription: form.description.value,
            workspaceId: workspaceId,
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
                workspaceId: workspaceId,
                requestField: requestField,
              )
              .run(),
        );

ReaderTaskEither<ProjectRepository, ProjectFailure, Project> getProjectTask({
  required String workspaceId,
  required String projectId,
  RequestField? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getProject(
            workspaceId: workspaceId,
            projectId: projectId,
            requestField: requestField,
          )
          .run(),
    );
