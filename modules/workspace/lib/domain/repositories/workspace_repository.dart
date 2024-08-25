import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class WorkspaceRepository {
  TaskEither<WorkspaceFailure, void> selectWorkspaceId(String workspaceId);

  TaskEither<WorkspaceFailure, List<Workspace>> getWorkspaceList({
    String? requestField,
  });

  TaskEither<WorkspaceFailure, Workspace> getWorkspace({
    required String workspaceId,
    String? requestField,
  });
}
