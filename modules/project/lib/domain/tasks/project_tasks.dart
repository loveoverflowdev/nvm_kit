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
  String? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getProjectList(
                requestField: requestField,
              )
              .run(),
        );

ReaderTaskEither<ProjectRepository, ProjectFailure, Project> getProjectTask({
  required String workspaceId,
  required String projectId,
  String? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getProject(
            projectId: projectId,
            requestField: requestField,
          )
          .run(),
    );
