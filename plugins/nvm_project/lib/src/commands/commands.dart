import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;
import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../repositories/repositories.dart';

ReaderTaskEither<ProjectRepository, ProjectFailure, List<ProjectResponse>>
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
              .run(),
        );

ReaderTaskEither<ProjectRepository, ProjectFailure, ProjectResponse>
    getProject({
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
