import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../active_structure_repository_provider.dart';

part 'active_structure_list_provider.g.dart';

typedef ActiveStructureListState = AsyncValue<List<ActiveStructure>>;

@riverpod
class ActiveStructureList extends _$ActiveStructureList {
  @override
  ActiveStructureListState build() =>
      ActiveStructureListState.data(List.empty());

  void loadActiveStructureList({
    required String activeStructureCode,
  }) async {
    state = const AsyncValue.loading();

    getActiveStructureListTask().match(
      (failure) {
        state = ActiveStructureListState.error(
          failure,
          StackTrace.current,
        );
      },
      (result) {
        state = ActiveStructureListState.data(
          result,
        );
      },
    ).run(
      ref.read(activeStructureRepositoryProvider),
    );
  }
}
