import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_project/nvm_project.dart';
import 'package:fpdart/fpdart.dart';

import 'models/models.dart';

ReaderTaskEither<ProjectRepository, Exception, ProjectBlock> createProject({
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
          .map(
            (e) => ProjectBlock(
              id: e.id,
              name: e.projectName,
              description: e.projectDescription,
              teamIds: e.teamIds,
              // TODO: convert str to date time
              // createdAt: e.createdAt,
              // updatedAt: e.updatedAt,
            ),
          )
          .run(),
    );

ReaderTaskEither<ProjectRepository, Exception, List<ProjectBlock>>
    getProjectList({
  required String workspaceId,
  RequestField? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getProjectList(
                workspaceId: workspaceId,
                requestField: requestField,
              )
              .map(
                (response) => response
                    .map(
                      (e) => ProjectBlock(
                        id: e.id,
                        name: e.projectName,
                        description: e.projectDescription,
                        teamIds: e.teamIds,
                        // TODO: convert str to date time
                        // createdAt: e.createdAt,
                        // updatedAt: e.updatedAt,
                      ),
                    )
                    .toList(),
              )
              .run(),
        );

ReaderTaskEither<ProjectRepository, Exception, ProjectBlock> getProject({
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
          .map(
            (e) => ProjectBlock(
              id: e.id,
              name: e.projectName,
              description: e.projectDescription,
              teamIds: e.teamIds,
              // TODO: convert str to date time
              // createdAt: e.createdAt,
              // updatedAt: e.updatedAt,
            ),
          )
          .run(),
    );
