import 'package:fpdart/fpdart.dart';
import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:workspace/domain.dart';

ReaderTaskEither<WorkspaceRepository, Exception, List<Workspace>>
    getWorkspaceListTask({
  RequestField? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getWorkspaceList(
                requestField: requestField,
              )
              .run(),
        );

ReaderTaskEither<WorkspaceRepository, WorkspaceFailure, Workspace>
    getWorkspaceTask({
  required String workspaceId,
  RequestField? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getWorkspace(
                requestField: requestField,
                workspaceId: workspaceId,
              )
              .run(),
        );
