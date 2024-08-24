import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workspace/domain.dart';

import '../workspace_repository_provider.dart';

part 'workspace_selecting_provider.g.dart';

typedef WorkspaceSelectingState = AsyncValue<Workspace?>;

@riverpod
class WorkspaceSelecting extends _$WorkspaceSelecting {
  @override
  WorkspaceSelectingState build() => const WorkspaceSelectingState.data(null);

  void selectWorkspace(Workspace workspace) async {
    state = const AsyncValue.loading();

    selectWorkspaceIdTask(workspace.id).match(
      (failure) {
        state = WorkspaceSelectingState.error(
          failure,
          StackTrace.current,
        );
      },
      (_) {
        state = WorkspaceSelectingState.data(workspace);
      },
    ).run(
      ref.read(workspaceRepositoryProvider),
    );
  }
}
