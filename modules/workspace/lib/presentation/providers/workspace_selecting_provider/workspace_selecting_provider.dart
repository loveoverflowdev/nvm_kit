import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workspace/domain.dart';

import '../workspace_repository_provider.dart';

part 'workspace_selecting_provider.g.dart';

typedef WorkspaceSelectingState = AsyncValue<void>;

@riverpod
class WorkspaceSelecting extends _$WorkspaceSelecting {
  @override
  WorkspaceSelectingState build() => const WorkspaceSelectingState.data(null);

  void selectWorkspaceId(String id) async {
    state = const AsyncValue.loading();

    selectWorkspaceIdTask(id).match(
      (failure) {
        state = WorkspaceSelectingState.error(
          failure,
          StackTrace.current,
        );
      },
      (response) {
        state = WorkspaceSelectingState.data(response);
      },
    ).run(
      ref.read(workspaceRepositoryProvider),
    );
  }
}
