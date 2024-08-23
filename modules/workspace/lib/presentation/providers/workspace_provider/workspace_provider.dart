import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workspace/domain.dart';

import '../workspace_repository_provider.dart';

part 'workspace_provider.g.dart';

typedef WorkspaceState = AsyncValue<Workspace?>;

@riverpod
Future<WorkspaceState> workspace(
  WorkspaceRef ref, {
  required String workspaceId,
}) async {
  return getWorkspaceTask(
    workspaceId: workspaceId,
  ).match(
    (failure) {
      return WorkspaceState.error(
        failure,
        StackTrace.current,
      );
    },
    (data) {
      return WorkspaceState.data(data);
    },
  ).run(
    ref.read(workspaceRepositoryProvider),
  );
}
