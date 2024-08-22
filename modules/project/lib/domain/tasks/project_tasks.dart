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
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getProjectList(
                workspaceId: workspaceId,
              )
              .run(),
        );

ReaderTaskEither<ProjectRepository, ProjectFailure, Project> getProjectTask({
  required String workspaceId,
  required String projectId,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getProject(
            workspaceId: workspaceId,
            projectId: projectId,
          )
          .run(),
    );
