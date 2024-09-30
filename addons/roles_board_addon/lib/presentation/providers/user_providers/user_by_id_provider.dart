import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roles_board_addon/domain.dart';

import 'user_repository_provider.dart';

part 'user_by_id_provider.g.dart';

typedef _UserState = AsyncValue<User?>;

@Riverpod(keepAlive: true)
class UserById extends _$UserById {
  @override
  AsyncValue<User?> build() => const _UserState.data(null);

  void loadUser(String id) async {
    state = const AsyncValue.loading();
    getUserByIdTask(id).match(
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
