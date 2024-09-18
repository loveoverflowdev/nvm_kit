import 'package:active_resource/active_resource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_resource_list_by_structure_id_provider.g.dart';

typedef _ActiveResourceListState = AsyncValue<List<ActiveResource>>;

@riverpod
class ActiveResourceListByStructureId
    extends _$ActiveResourceListByStructureId {
  @override
  AsyncValue<List<ActiveResource>> build(
    String activeStructureId,
  ) =>
      _ActiveResourceListState.data(List.empty());

  void loadActiveResourceList({
    required String? projectId,
    String? requestField,
  }) async {
    state = const AsyncValue.loading();
    ref
        .watch(
      activeStructureByIdProvider(
        activeStructureId,
      ).future,
    )
        .then(
      (structure) {
        getActiveResourceListTask(
          structure: structure,
          requestField: requestField,
          projectId: projectId,
        ).match(
          (failure) {
            state = _ActiveResourceListState.error(
              failure,
              failure.stackTrace ?? StackTrace.current,
            );
          },
          (result) {
            state = _ActiveResourceListState.data(
              result,
            );
          },
        ).run(
          ref.watch(activeResourceRepositoryProvider),
        );
      },
    ).catchError(
      (error, stackTrace) {
        state = _ActiveResourceListState.error(
          error,
          stackTrace,
        );
      },
    );
  }
}
