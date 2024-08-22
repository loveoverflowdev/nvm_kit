import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class WorkspaceRepository {
  TaskEither<WorkspaceFailure, List<Workspace>> getWorkspaceList();

  TaskEither<WorkspaceFailure, Workspace> getWorkspace({
    required String workspaceId,
  });
}
