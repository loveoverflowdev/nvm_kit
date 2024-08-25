import 'package:fpdart/fpdart.dart';
import 'package:workspace/domain.dart';

ReaderTaskEither<WorkspaceRepository, WorkspaceFailure, void>
    selectWorkspaceIdTask(
  String id,
) =>
        ReaderTaskEither(
          (repository) => repository.selectWorkspaceId(id).run(),
        );

ReaderTaskEither<WorkspaceRepository, WorkspaceFailure, List<Workspace>>
    getWorkspaceListTask({
  String? requestField,
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
  String? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getWorkspace(
                workspaceId: workspaceId,
              )
              .run(),
        );
