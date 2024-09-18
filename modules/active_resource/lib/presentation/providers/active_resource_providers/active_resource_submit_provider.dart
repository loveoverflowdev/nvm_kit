import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../active_structure_providers.dart';
import 'active_resource_repository_provider.dart';

part 'active_resource_submit_provider.g.dart';

typedef _ActiveResourceSubmitState = AsyncValue<void>;

@riverpod
class ActiveResourceSubmit extends _$ActiveResourceSubmit {
  @override
  AsyncValue<void> build({
    required String activeStructureCode,

    /// [key] to seperated listener
    required String key,
  }) =>
      const _ActiveResourceSubmitState.data(null);

  void submit(ActiveResourceForm payload) {
    state = const AsyncValue.loading();
    ref
        .watch(
      activeStructureByCodeProvider(activeStructureCode).future,
    )
        .then(
      (structure) {
        createActiveResourceTask(
          structure: structure,
          payload: payload,
        ).match(
          (failure) {
            state = _ActiveResourceSubmitState.error(
              failure,
              failure.stackTrace ?? StackTrace.current,
            );
          },
          (response) {
            state = const _ActiveResourceSubmitState.data(null);
          },
        ).run(
          ref.watch(activeResourceRepositoryProvider),
        );
      },
    ).catchError(
      (error, stackTrace) {
        state = _ActiveResourceSubmitState.error(
          error,
          stackTrace,
        );
      },
    );
  }
}
