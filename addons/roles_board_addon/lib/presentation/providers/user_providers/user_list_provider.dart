import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roles_board_addon/domain.dart';

import 'roles_board_user_repository_provider.dart';

part 'user_list_provider.g.dart';

typedef _UserListState = AsyncValue<List<User>>;

@Riverpod(keepAlive: true)
class UserList extends _$UserList {
  @override
  AsyncValue<List<User>> build() => _UserListState.data(List.empty());

  void loadUserList() async {
    state = const AsyncValue.loading();
    getAllUsersTask().match(
      (failure) {
        state = AsyncValue.error(
          failure,
          failure.stackTrace ?? StackTrace.current,
        );
      },
      (data) {
        state = AsyncValue.data(data);
      },
    ).run(ref.watch(rolesBoardUserRepositoryProvider));
  }
}
