import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:roles_board_addon/domain.dart';

import '../roles_board_repository_providers.dart';

part 'roles_board_update_resource_role_progress_provider.g.dart';

typedef _RolesBoardUpdateResourceRoleProgressState = AsyncValue<dynamic>;

@riverpod
class RolesBoardUpdateResourceRoleProgress extends _$RolesBoardUpdateResourceRoleProgress {

  @override
  AsyncValue<dynamic> build({
    required String activeStructureCode, 
    required String resourceId, 
  }) => const _RolesBoardUpdateResourceRoleProgressState.data(null);

  void submit({
    required RolesBoardRoleProgressPayload payload
  }) {
    state = const _RolesBoardUpdateResourceRoleProgressState.loading();
    updateRolesBoardResourceRoleProgressTask(
      activeStructureCode: activeStructureCode, 
      resourceId: resourceId, 
      payload: payload,
    )
    .match(
      _onFailure,
      (_) => state = const _RolesBoardUpdateResourceRoleProgressState.data(null),
    )
    .run(
      ref.watch(rolesBoardResourceStateRepository),
    );
  }

  _onFailure(RolesBoardFailure failure) {
    state = _RolesBoardUpdateResourceRoleProgressState.error(
      failure,
      failure.stackTrace ?? StackTrace.current,
    );
  }
}
