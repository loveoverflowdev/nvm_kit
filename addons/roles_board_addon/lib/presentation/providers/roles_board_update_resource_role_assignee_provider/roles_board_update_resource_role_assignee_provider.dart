import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roles_board_addon/domain.dart';

import '../roles_board_repository_providers.dart';

part 'roles_board_update_resource_role_assignee_provider.g.dart';

typedef _RolesBoardUpdateResourceRoleAssigneeState = AsyncValue<dynamic>;

@riverpod
class RolesBoardUpdateResourceRoleAssignee
    extends _$RolesBoardUpdateResourceRoleAssignee {
  @override
  AsyncValue<dynamic> build({
    required String activeStructureCode,
    required String resourceId,
    required String roleId,
  }) =>
      const _RolesBoardUpdateResourceRoleAssigneeState.data(null);

  void submit({
    required RolesBoardRoleAssigneePayload payload,
  }) {
    state = const _RolesBoardUpdateResourceRoleAssigneeState.loading();
    updateRolesBoardResourceRoleAssigneeTask(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      payload: payload,
    )
        .match(
          _onFailure,
          (_) => state =
              const _RolesBoardUpdateResourceRoleAssigneeState.data(null),
        )
        .run(
          ref.watch(rolesBoardResourceStateRepositoryProvider),
        );
  }

  _onFailure(RolesBoardFailure failure) {
    state = _RolesBoardUpdateResourceRoleAssigneeState.error(
      failure,
      failure.stackTrace ?? StackTrace.current,
    );
  }
}
