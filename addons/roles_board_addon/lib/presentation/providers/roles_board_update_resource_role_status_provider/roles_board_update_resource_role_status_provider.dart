import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roles_board_addon/domain.dart';

import '../roles_board_repository_providers.dart';

part 'roles_board_update_resource_role_status_provider.g.dart';

typedef _RolesBoardUpdateResourceRoleStatusState = AsyncValue<dynamic>;

@riverpod
class RolesBoardUpdateResourceRoleStatus
    extends _$RolesBoardUpdateResourceRoleStatus {
  @override
  AsyncValue<dynamic> build({
    required String activeStructureCode,
    required String resourceId,
    required String roleId,
  }) =>
      const _RolesBoardUpdateResourceRoleStatusState.data(null);

  void submit({required RolesBoardRoleStatusPayload payload}) {
    state = const _RolesBoardUpdateResourceRoleStatusState.loading();
    updateRolesBoardResourceRoleStatusTask(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      payload: payload,
    )
        .match(
          _onFailure,
          (_) =>
              state = const _RolesBoardUpdateResourceRoleStatusState.data(null),
        )
        .run(
          ref.watch(rolesBoardResourceStateRepositoryProvider),
        );
  }

  _onFailure(RolesBoardFailure failure) {
    state = _RolesBoardUpdateResourceRoleStatusState.error(
      failure,
      failure.stackTrace ?? StackTrace.current,
    );
  }
}
