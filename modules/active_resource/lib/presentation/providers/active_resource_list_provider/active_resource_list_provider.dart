import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../active_resource_repository_provider.dart';

part 'active_resource_list_provider.g.dart';

// @riverpod
// Future<List<ActiveResource>> activeResourceList(
//   ActiveResourceListRef ref, {
//   required String activeStructureCode,
// }) {
//   return getActiveResourceListTask(
//     activeStructureCode: activeStructureCode,
//   )
//       .run(
//         ref.read(activeResourceRepositoryProvider),
//       )
//       .then(
//         (value) => value.fold((failure) => throw failure, (data) => data),
//       );
// }

typedef ActiveResourceListState = AsyncValue<List<ActiveResource>>;

@riverpod
class ActiveResourceList extends _$ActiveResourceList {
  @override
  ActiveResourceListState build({
    required String activeStructureCode,
  }) =>
      ActiveResourceListState.data(List.empty());

  void loadActiveResourceList({
    required String activeStructureCode,
  }) async {
    state = const AsyncValue.loading();
    getActiveResourceListTask(
      activeStructureCode: activeStructureCode,
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
      ref.read(activeResourceRepositoryProvider),
    );
  }
}
