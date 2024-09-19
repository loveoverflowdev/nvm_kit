import 'package:fpdart/fpdart.dart';
import 'package:project/domain.dart';

ReaderTaskEither<ProjectRepository, ProjectFailure, void> createProjectTask({
  required ProjectForm form,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .createProject(
            form: form,
          )
          .run(),
    );

ReaderTaskEither<ProjectRepository, ProjectFailure, List<Project>>
    getProjectListTask({
  String? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getProjectList(
                requestField: requestField,
              )
              .run(),
        );

ReaderTaskEither<ProjectRepository, ProjectFailure, Project> getProjectByIdTask(String projectId, {
  required String workspaceId,
  String? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getProjectId(
            projectId,
            requestField: requestField,
          )
          .run(),
    );
