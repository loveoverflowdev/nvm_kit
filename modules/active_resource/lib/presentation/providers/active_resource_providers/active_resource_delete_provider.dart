import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../active_structure_providers.dart';
import 'active_resource_repository_provider.dart';

part 'active_resource_delete_provider.g.dart';

typedef _ActiveResourceDeleteState = AsyncValue<void>;

@riverpod
class ActiveResourceDelete extends _$ActiveResourceDelete {
  @override
  AsyncValue<void> build({
    required String activeStructureCode,

    /// [key] to seperated listener
    required String key,
  }) =>
      const _ActiveResourceDeleteState.data(null);

  void deleteById(String id) {
    state = const AsyncValue.loading();
    ref
        .watch(
      activeStructureByCodeProvider(activeStructureCode).future,
    )
        .then(
      (structure) {
        deleteActiveResourceByIdTask(id, structure: structure)
          .match(
            (failure) {
              state = _ActiveResourceDeleteState.error(
                failure,
                failure.stackTrace ?? StackTrace.current,
              );
            },
            (result) {
              state = _ActiveResourceDeleteState.data(
                result,
              );
            },
          )
          .run(
            ref.watch(activeResourceRepositoryProvider),
          );
      },
    ).catchError(
      (error, stackTrace) {
        state = _ActiveResourceDeleteState.error(
          error,
          stackTrace,
        );
      },
    );
  }
}
