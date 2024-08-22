import 'package:active_resource/domain.dart';
import 'package:active_resource/presentation/providers/workspace_id_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../active_resource_repository_provider.dart';

part 'active_resource_list_provider.g.dart';

typedef ActiveResourceListState = AsyncValue<List<ActiveResource>>;

@riverpod
class ActiveResourceList extends _$ActiveResourceList {
  @override
  ActiveResourceListState build() => ActiveResourceListState.data(List.empty());

  void loadActiveResourceList({
    required String resourceCode,
  }) async {
    final workspaceId = ref.watch(workspaceIdProvider);
    if (workspaceId == null) {
      state = ActiveResourceListState.error(
        'workspaceId is null',
        StackTrace.current,
      );
      return;
    }
    state = const AsyncValue.loading();
    getActiveResourceListTask(
      resourceCode: resourceCode,
      workspaceId: workspaceId,
    ).match(
      (failure) {
        state = ActiveResourceListState.error(
          failure,
          StackTrace.current,
        );
      },
      (result) {
        state = ActiveResourceListState.data(
          result,
        );
      },
    ).run(
      ref.read(activeResourceRepositoryProvider),
    );
  }
}
