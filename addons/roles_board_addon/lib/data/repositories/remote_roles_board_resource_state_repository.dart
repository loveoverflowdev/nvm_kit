import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';
import 'package:nvm_api_client/nvm_api_client.dart' as api;

final class RemoteRolesBoardResourceStateRepository
    implements RolesBoardResourceStateRepository {
  final api.RolesBoardApiClient _apiClient;

  RemoteRolesBoardResourceStateRepository({
    required api.RolesBoardApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<RolesBoardFailure, dynamic> updateRolesBoardResourceRoleProgress({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleProgressPayload payload,
  }) {
    return TaskEither.tryCatch(
      () => _apiClient.updateRolesBoardResourceRoleProgress(
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
        payload: api.RolesBoardRoleProgressPayload(
          roleId: payload.roleId,
          addonInstanceCode: payload.addonInstanceCode,
          progress: payload.progress,
        ),
      ),
      (error, stackTrace) => RolesBoardFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<RolesBoardFailure, dynamic> updateRolesBoardResourceRoleStatus({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleStatusPayload payload,
  }) {
    return TaskEither.tryCatch(
      () => _apiClient.updateRolesBoardResourceRoleStatus(
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
        payload: api.RolesBoardRoleStatusPayload(
          roleId: payload.roleId,
          addonInstanceCode: payload.addonInstanceCode,
          status: payload.status,
        ),
      ),
      (error, stackTrace) => RolesBoardFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }
}
