import 'package:active_resource/domain.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'active_structure_repository_providers.dart';

part 'active_structure_list_provider.g.dart';

typedef ActiveStructureListState = AsyncValue<List<ActiveStructure>>;

@riverpod
class ActiveStructureList extends _$ActiveStructureList {
  @override
  ActiveStructureListState build() =>
      ActiveStructureListState.data(List.empty());

  void loadActiveStructureList() async {
    state = const AsyncValue.loading();
    TaskEither(
      () => readLocalActiveStructureListTask().run(
        ref.watch(localActiveStructureRepositoryProvider),
      ),
    ).flatMap(
      (activeStructureList) {
        if (activeStructureList.isNotEmpty) {
          return TaskEither.right(activeStructureList);
        } else {
          return TaskEither(
            () => getRemoteActiveStructureListTask().run(
              ref.watch(remoteActiveStructureRepositoryProvider),
            ),
          ).chainFirst(
            (activeStructureList) {
              return TaskEither(
                () =>
                    writeLocalActiveStructureListTask(activeStructureList).run(
                  ref.watch(localActiveStructureRepositoryProvider),
                ),
              ).chainFirst(
                (saved) {
                  if (!saved) {
                    throw Exception(
                        'writeLocalActiveStructureListTask return false');
                  }
                  return TaskEither.right([]);
                },
              );
            },
          );
        }
      },
    ).match(
      _onFailure,
      (data) {
        state = ActiveStructureListState.data(
          data,
        );
      },
    ).run();
  }

  void _onFailure(ActiveStructureFailure failure) {
    state = ActiveStructureListState.error(
      failure,
      failure.stackTrace ?? StackTrace.current,
    );
  }
}

/*

void loadRolesBoardList() async {
    state = const AsyncValue.loading();
    TaskEither(
      () => getLocalRolesBoardListTask()
          .run(ref.watch(localRolesBoardRepositoryProvider)),
    ).flatMap((rolesBoard) {
      if (rolesBoard.isNotEmpty) {
        return TaskEither.right(rolesBoard);
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

*/