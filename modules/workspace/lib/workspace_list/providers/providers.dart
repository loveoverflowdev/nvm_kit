import 'package:nvm_workspace/nvm_workspace.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:alchemist_api_client/alchemist_api_client.dart';

import '../../functions/functions.dart';

part 'providers.g.dart';

Future<String?> tokenFetcher() async {
  return '';
}

@riverpod
WorkspaceRepository workspaceRepository(WorkspaceRepositoryRef ref) {
  return WorkspaceRepository.remote(
    apiClient: ApiClient.nvm(),
    tokenFetcher: tokenFetcher,
  );
}

typedef WorkspaceListState = AsyncValue<List<WorkspaceBlock>>;

@riverpod
final class WorkspaceList extends _$WorkspaceList {
  @override
  AsyncValue<List<WorkspaceBlock>> build() => const AsyncData([]);

  Future<void> loadWorkspaceList() async {
    state = const AsyncValue.loading();

    getWorkspaceList().match(
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
