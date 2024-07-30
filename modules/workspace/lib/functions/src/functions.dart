import 'package:nvm_workspace/nvm_workspace.dart';
import 'package:fpdart/fpdart.dart';
import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'models/models.dart';

ReaderTaskEither<WorkspaceRepository, Exception, List<WorkspaceBlock>>
    getWorkspaceList({
  RequestField? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getWorkspaceList(
                requestField: requestField,
              )
              .map(
                (response) => response
                    .map(
                      (e) => WorkspaceBlock(
                        name: e.workspaceName,
                        namespace: e.namespace,
                      ),
                    )
                    .toList(),
              )
              .run(),
        );

ReaderTaskEither<WorkspaceRepository, Exception, WorkspaceBlock> getWorkspace({
  required String workspaceId,
  RequestField? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getWorkspace(
            requestField: requestField,
            workspaceId: workspaceId,
          )
          .map(
            (response) => WorkspaceBlock(
              name: response.workspaceName,
              namespace: response.namespace,
            ),
          )
          .run(),
    );
