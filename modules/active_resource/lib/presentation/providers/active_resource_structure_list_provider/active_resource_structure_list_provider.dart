import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../active_resource_structure_repository_provider.dart';
import '../workspace_id_provider.dart';

part 'active_resource_structure_list_provider.g.dart';

typedef ActiveResourceStructureListState
    = AsyncValue<List<ActiveResourceStructure>>;

@riverpod
class ActiveResourceStructureList extends _$ActiveResourceStructureList {
  @override
  ActiveResourceStructureListState build() =>
      ActiveResourceStructureListState.data(List.empty());

  void loadActiveResourceStructureList({
    required String resourceCode,
  }) async {
    final workspaceId = ref.watch(workspaceIdProvider);
    if (workspaceId == null) {
      state = ActiveResourceStructureListState.error(
        'workspaceId is null',
        StackTrace.current,
      );
      return;
    }
    state = const AsyncValue.loading();

    getActiveResourceStructureListTask(
      workspaceId: workspaceId,
    ).match(
      (failure) {
        state = ActiveResourceStructureListState.error(
          failure,
          StackTrace.current,
        );
      },
      (result) {
        state = ActiveResourceStructureListState.data(
          result,
        );
      },
    ).run(
      ref.read(activeResourceStructureRepositoryProvider),
    );
  }
}
