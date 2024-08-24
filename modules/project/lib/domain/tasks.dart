import 'package:fpdart/fpdart.dart';

import 'entities.dart';
import 'repositories.dart';

ReaderTaskEither<ProjectRepository, ProjectFailure, Project> createProjectTask({
  required ProjectForm form,
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
    getProjectListTask() => ReaderTaskEither(
          (repository) => repository
              .getProjectList()
              .map(
                (response) => response.toList(),
              )
              .run(),
        );

ReaderTaskEither<ProjectRepository, Exception, Project> getProjectTask({
  required String projectId,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getProject(
            projectId: projectId,
          )
          .run(),
    );
