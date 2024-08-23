import 'package:fpdart/fpdart.dart';
import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:workspace/domain.dart';

ReaderTaskEither<WorkspaceRepository, WorkspaceFailure, void>
    selectWorkspaceIdTask(
  String id,
) =>
        ReaderTaskEither(
          (repository) => repository.selectWorkspaceId(id).run(),
        );

ReaderTaskEither<WorkspaceRepository, WorkspaceFailure, List<Workspace>>
    getWorkspaceListTask() => ReaderTaskEither(
          (repository) => repository.getWorkspaceList().run(),
        );

ReaderTaskEither<WorkspaceRepository, WorkspaceFailure, Workspace>
    getWorkspaceTask({
  required String workspaceId,
  RequestField? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getWorkspace(
                workspaceId: workspaceId,
              )
              .run(),
        );
