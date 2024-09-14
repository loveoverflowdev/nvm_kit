import 'package:active_resource/active_resource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_resource_list_provider.g.dart';

typedef ActiveResourceListState = AsyncValue<List<ActiveResource>>;

@riverpod
class ActiveResourceList extends _$ActiveResourceList {
  @override
  ActiveResourceListState build({
    required String activeStructureCode,
  }) =>
      ActiveResourceListState.data(List.empty());

  void loadActiveResourceList({
    required String? projectId,
    String? requestField,
  }) async {
    state = const AsyncValue.loading();
    ref.watch(activeStructureProvider(activeStructureCode: activeStructureCode).future,)
      .then((structure) {
          getActiveResourceListTask(
            structure: structure,
            requestField: requestField,
            projectId: projectId,
          ).match(
            (failure) {
              state = ActiveResourceListState.error(
                failure,
                failure.stackTrace ?? StackTrace.current,
              );
            },
            (result) {
              state = ActiveResourceListState.data(
                result,
              );
            },
          ).run(
            ref.watch(activeResourceRepositoryProvider),
          );
        },
      )
      .catchError(
        (error, stackTrace) {
          state = ActiveResourceListState.error(
            error,
            stackTrace,
          );
        },
      );
  }
}
