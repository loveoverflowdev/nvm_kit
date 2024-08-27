import 'package:fpdart/fpdart.dart';
import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:roles_board_addon/domain.dart';

final class RemoteRolesBoardRepository implements RolesBoardRepository {
  final api.RolesBoardApiClient _apiClient;

  RemoteRolesBoardRepository({
    required api.RolesBoardApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<RolesBoardFailure, List<RolesBoard>> getRolesBoardList({
    required String activeStructureCode,
    required String resourceId,
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient
          .getRolesBoardList(
            activeStructureCode: activeStructureCode,
            resourceId: resourceId,
            requestField: requestField,
          )
          .then(
            (value) => value.map(_mapResponse).toList(),
          ),
      (error, stackTrace) =>
          RolesBoardFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  RolesBoard _mapResponse(api.RolesBoardResponse response) {
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
