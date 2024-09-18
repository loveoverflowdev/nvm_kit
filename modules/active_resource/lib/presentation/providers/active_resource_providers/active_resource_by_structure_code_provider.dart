import 'package:active_resource/active_resource.dart';
import 'package:active_resource/domain.dart' as domain;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_resource_by_structure_code_provider.g.dart';

typedef _ActiveResourceState = AsyncValue<domain.ActiveResource?>;

@riverpod
class ActiveResourceByStructureCode extends _$ActiveResourceByStructureCode {
  @override
  // ignore: library_private_types_in_public_api
  _ActiveResourceState build(String activeStructureCode) =>
      const _ActiveResourceState.data(null);

  void loadActiveResource({
    required String id,
    String? requestField,
  }) async {
    state = const AsyncValue.loading();
    ref
        .watch(
      activeStructureByIdProvider(id).future,
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
