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
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient
          .getRolesBoardList(
            requestField: requestField,
          )
          .then(
            (value) => value.map(_mapResponse).toList(),
          ),
      (error, stackTrace) => RolesBoardFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }

  RolesBoard _mapResponse(api.RolesBoardResponse response) {
    return RolesBoard(
      id: response.id,
      boardName: response.boardName,
      description: response.description,
      roles: [
        for (final role in response.roles)
          Role(
            id: role.id, 
            name: role.name, 
            description: role.description, 
            shortName: role.shortName,
          ),
      ],
      createdBy: response.createdBy,
      createdAt: response.createdAt,
      updatedBy: response.updatedBy,
      updatedAt: response.updatedAt,
      createdByUser: response.createdByUser,
      updatedByUser: response.updatedByUser,
      progresses: [
        for (final progress in response.progresses)
          Progress(
            id: progress.id,
            progress: progress.progress,
            title: progress.title,
            description: progress.description,
            color: progress.color,
            icon: progress.icon,
          ),
      ],
    );
  }
}
