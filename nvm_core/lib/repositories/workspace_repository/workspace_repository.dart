import 'package:fpdart/fpdart.dart';
import 'package:nvm_core/common.dart';

import 'entities.dart';

abstract interface class WorkspaceRepository {
  TaskEither<Failure, List<Workspace>> getWorkspaceList({
    RequestField? requestField,
  });

  TaskEither<Failure, Workspace> getWorkspace({
    required String workspaceId,
    RequestField? requestField,
  });
}
