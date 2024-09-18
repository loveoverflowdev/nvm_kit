import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../active_structure_providers.dart';
import 'active_resource_repository_provider.dart';

part 'active_resource_submit_provider.g.dart';

typedef ActiveResourceSubmitState = AsyncValue<void>;

@riverpod
class ActiveResourceSubmit extends _$ActiveResourceSubmit {
  @override
  ActiveResourceSubmitState build({
    required String activeStructureCode,

    /// [key] to seperated listener
    required String key,
  }) =>
      const ActiveResourceSubmitState.data(null);

  void submit(ActiveResourcePayload payload) {
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
            state = ActiveResourceSubmitState.error(
              failure,
              failure.stackTrace ?? StackTrace.current,
            );
          },
          (response) {
            state = const ActiveResourceSubmitState.data(null);
          },
        ).run(
          ref.watch(activeResourceRepositoryProvider),
        );
      },
    ).catchError(
      (error, stackTrace) {
        state = ActiveResourceSubmitState.error(
          error,
          stackTrace,
        );
      },
    );
  }
}
