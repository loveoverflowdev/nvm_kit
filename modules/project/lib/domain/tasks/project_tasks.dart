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
            projectId: projectId,
          )
          .run(),
    );
