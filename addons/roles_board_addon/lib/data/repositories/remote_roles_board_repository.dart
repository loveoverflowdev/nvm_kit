import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

final class RemoteRolesBoardRepository implements RolesBoardRepository {
  late final RolesBoardApiClient _apiClient;

  RemoteRolesBoardRepository();

  set apiClient(RolesBoardApiClient client) {
    _apiClient = client;
  }

  @override
  TaskEither<RolesBoardFailure, List<RolesBoard>> getRolesBoardList({
    required String workspaceId,
    required String resourceCode,
    required String resourceId,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      // http://172.23.124.11:8001/api/workspaces/613272411067910808/widget/board-roles/get
      () async => _apiClient
          .getRolesBoardList(
            workspaceId: workspaceId,
            resourceCode: resourceCode,
            resourceId: resourceId,
            requestField: requestField,
          )
          .then(
            (value) => value.map(_mapResponse).toList(),
          ),
      (error, stackTrace) => RolesBoardFailure.fromError(error),
    );
  }

  RolesBoard _mapResponse(RolesBoardResponse response) {
    return RolesBoard(
      id: response.id,
      boardName: response.boardName,
      description: response.description,
      roles: [],
      createdBy: response.createdBy,
      createdAt: response.createdAt,
      updatedBy: response.updatedBy,
      updatedAt: response.updatedAt,
      createdByUser: response.createdByUser,
      updatedByUser: response.updatedByUser,
      progresses: [],
    );
  }
}
