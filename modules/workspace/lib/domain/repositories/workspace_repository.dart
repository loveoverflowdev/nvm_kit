import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;
import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class WorkspaceRepository {
  TaskEither<WorkspaceFailure, List<Workspace>> getWorkspaceList({
    RequestField? requestField,
  });

  TaskEither<WorkspaceFailure, Workspace> getWorkspace({
    required String workspaceId,
    RequestField? requestField,
  });
}
