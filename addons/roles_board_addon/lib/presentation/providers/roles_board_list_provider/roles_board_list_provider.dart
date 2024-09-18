import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roles_board_addon/domain.dart';

import '../roles_board_repository_providers.dart';

part 'roles_board_list_provider.g.dart';

typedef RolesBoardListState = AsyncValue<List<RolesBoard>>;

@riverpod
class RolesBoardList extends _$RolesBoardList {
  @override
  RolesBoardListState build() => RolesBoardListState.data(List.empty());

  void loadRolesBoardList() async {
    state = const AsyncValue.loading();
    TaskEither(
      () => getLocalRolesBoardListTask()
          .run(ref.watch(localRolesBoardRepositoryProvider)),
    ).flatMap((rolesBoardList) {
      if (rolesBoardList.isNotEmpty) {
        return TaskEither.right(rolesBoardList);
      } else {
        return TaskEither(
          () => getRemoteRolesBoardListTask().run(
            ref.watch(remoteRolesBoardRepositoryProvider),
          ),
        ).chainFirst((rolesBoard) {
          return TaskEither(() => writeLocalRolesBoardListTask(
                    rolesBoardList: rolesBoard,
                  ).run(ref.watch(localRolesBoardRepositoryProvider)))
              .chainFirst((saved) {
            if (!saved) {
              throw Exception('writeLocalRolesBoardListTask return false');
            }
            return TaskEither.right([]);
          });
        });
      }
    }).match(_onFailure, (data) {
      state = RolesBoardListState.data(
        data,
      );
    }).run();
  }

  _onFailure(RolesBoardFailure failure) {
    state = RolesBoardListState.error(
      failure,
      failure.stackTrace ?? StackTrace.current,
    );
  }
}
