import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roles_board_addon/domain.dart';

part 'roles_board_resource_state_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
final class RolesBoardResourceStateNotifier
    extends _$RolesBoardResourceStateNotifier {
  @override
  AsyncValue<RolesBoardResourceState?> build({
    required String resourceId,
    required String addonInstanceCode,
  }) =>
      const AsyncValue.data(null);

  void setState(RolesBoardResourceState? resourceState) {
    state = AsyncValue.data(resourceState);
  }
}
