import 'package:active_resource/active_resource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_resource_list_by_structure_code_provider.g.dart';

typedef _ActiveResourceListState = AsyncValue<List<ActiveResource>>;

@riverpod
class ActiveResourceListByStructureCode
    extends _$ActiveResourceListByStructureCode {
  @override
  AsyncValue<List<ActiveResource>> build(
    String activeStructureCode,
  ) =>
      _ActiveResourceListState.data(List.empty());

  void loadActiveResourceList({
    required String? projectId,
    String? requestField,
  }) async {
    state = const AsyncValue.loading();
    ref
        .watch(
      activeStructureByCodeProvider(activeStructureCode).future,
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
