import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import '../repositories/repositories.dart';

ReaderTaskEither<WorkspaceRepository, WorkspaceFailure, List<WorkspaceResponse>>
    getWorkspaceList({
  RequestField? requestField,
}) =>
        ReaderTaskEither(
          (repository) =>
              repository.getWorkspaceList(requestField: requestField).run(),
        );

ReaderTaskEither<WorkspaceRepository, WorkspaceFailure, WorkspaceResponse>
    getWorkspace({
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
