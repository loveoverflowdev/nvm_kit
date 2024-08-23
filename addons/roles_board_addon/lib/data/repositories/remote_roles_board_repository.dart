import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

final class RemoteRolesBoardRepository implements RolesBoardRepository {
  final RolesBoardApiClient _apiClient;

  RemoteRolesBoardRepository({
    required RolesBoardApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<RolesBoardFailure, List<RolesBoard>> getRolesBoardList({
    required String resourceCode,
    required String resourceId,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient
          .getRolesBoardList(
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
