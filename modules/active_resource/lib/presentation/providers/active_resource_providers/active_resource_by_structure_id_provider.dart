import 'package:active_resource/active_resource.dart';
import 'package:active_resource/domain.dart' as domain;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_resource_by_structure_id_provider.g.dart';

typedef _ActiveResourceState = AsyncValue<domain.ActiveResource?>;

@riverpod
class ActiveResourceByStructureId extends _$ActiveResourceByStructureId {
  @override
  AsyncValue<domain.ActiveResource?> build(String activeStructureId) =>
      const _ActiveResourceState.data(null);

  void loadActiveResource({
    required String id,
    String? requestField,
  }) async {
    state = const AsyncValue.loading();
    ref
        .watch(
      activeStructureByIdProvider(activeStructureId).future,
    )
        .then(
      (structure) {
        domain
            .getActiveResourceTask(
          structure: structure,
          requestField: requestField,
          id: id,
        )
            .match(
          (failure) {
            state = _ActiveResourceState.error(
              failure,
              failure.stackTrace ?? StackTrace.current,
            );
          },
          (result) {
            state = _ActiveResourceState.data(
              result,
            );
          },
        ).run(
          ref.watch(activeResourceRepositoryProvider),
        );
      },
    ).catchError(
      (error, stackTrace) {
        state = _ActiveResourceState.error(
          error,
          stackTrace,
        );
      },
    );
  }
}
