import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'user_repository_provider.dart';

part 'user_list_provider.g.dart';

typedef _UserListState = AsyncValue<List<User>>;

@riverpod
class UserList extends _$UserList {
  @override
  AsyncValue<List<User>> build() => _UserListState.data(List.empty());

  void loadUserList({
    String? requestField,
  }) async {
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
    ).run(ref.watch(userRepositoryProvider));
  }
}
