import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workspace/domain.dart';

import '../workspace_repository_provider.dart';

part 'workspace_list_provider.g.dart';

typedef WorkspaceListState = AsyncValue<List<Workspace>>;

@riverpod
class WorkspaceList extends _$WorkspaceList {
  @override
  WorkspaceListState build() => WorkspaceListState.data(List.empty());

  void loadWorkspaceList() {
    getWorkspaceListTask().match(
      (failure) {
        state = WorkspaceListState.error(
          failure,
          StackTrace.current,
        );
      },
      (response) {
        state = WorkspaceListState.data(response);
      },
    ).run(
      ref.read(workspaceRepositoryProvider),
    );
  }
}
