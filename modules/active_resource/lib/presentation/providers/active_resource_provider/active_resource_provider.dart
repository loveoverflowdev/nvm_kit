import 'package:active_resource/active_resource.dart';
import 'package:active_resource/domain.dart' as domain;
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'active_resource_provider.g.dart';


typedef ActiveResourceState = AsyncValue<domain.ActiveResource?>;

@riverpod
class ActiveResource extends _$ActiveResource {
  @override
  ActiveResourceState build({
    required String activeStructureCode,
  }) =>
      ActiveResourceState.data(null);

  void loadActiveResource({
    required String id,
    String? requestField,
  }) async {
    state = const AsyncValue.loading();
    ref
      .watch(activeStructureProvider(activeStructureCode: activeStructureCode).future,)
      .then((structure) {
        domain.getActiveResourceTask(
            structure: structure,
            requestField: requestField, 
            id: id,
          ).match(
            (failure) {
              state = ActiveResourceState.error(
                failure,
                failure.stackTrace ?? StackTrace.current,
              );
            },
            (result) {
              state = ActiveResourceState.data(
                result,
              );
            },
          ).run(
            ref.watch(activeResourceRepositoryProvider),
          );
      },
    ).catchError(
        (error, stackTrace) {
          state = ActiveResourceState.error(
            error,
            stackTrace,
          );
        },
    );
  }
}
