import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roles_board_addon/domain.dart';
import 'user_list_provider.dart';

part 'user_by_id_provider.g.dart';

typedef _UserState = AsyncValue<User?>;

@Riverpod(keepAlive: true)
class UserById extends _$UserById {
  @override
  AsyncValue<User?> build({
    required String id,
  }) {
    _loadUser();
    return const _UserState.data(null);
  }

  void _loadUser() {
    state = const AsyncValue.loading();
    ref.listen(userListProvider, (pre, next) {
      next.whenData((data) {
        final index = data.indexWhere((e) => e.id == id);

        final user = index == -1 ? null : data[index];

        state = AsyncValue.data(user);
      });
    });
  }
}
