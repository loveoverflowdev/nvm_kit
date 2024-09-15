import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roles_board_addon/domain.dart';

import '../roles_board_repository_provider.dart';

part 'roles_board_list_provider.g.dart';

typedef RolesBoardListState = AsyncValue<List<RolesBoard>>;

@riverpod
class RolesBoardList extends _$RolesBoardList {
  @override
  RolesBoardListState build() => RolesBoardListState.data(List.empty());

  void loadRolesBoardList({
    String? requestField,
  }) async {
    state = const AsyncValue.loading();
    getRolesBoardListTask(
      requestField: requestField,
    ).match(
      (failure) {
        state = RolesBoardListState.error(
          failure,
          failure.stackTrace ?? StackTrace.current,
        );
      },
      (result) {
        state = RolesBoardListState.data(
          result,
        );
      },
    ).run(
      ref.watch(rolesBoardRepositoryProvider),
    );
  }
}
