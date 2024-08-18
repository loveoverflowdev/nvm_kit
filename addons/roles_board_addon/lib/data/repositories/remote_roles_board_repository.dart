import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

import '../requests.dart';
import '../responses.dart';

final class RemoteRolesBoardRepository implements RolesBoardRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenProvider;

  RemoteRolesBoardRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenProvider,
  })  : _apiClient = apiClient,
        _tokenProvider = tokenProvider;

  @override
  TaskEither<RolesBoardFailure, List<RolesBoard>> getRolesBoardList({
    required String workspaceId,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      // http://172.23.124.11:8001/api/workspaces/613272411067910808/widget/board-roles/get
      () async => _apiClient.requestJson(
        endpoint: ApiEndpoint(
          uriTemplate: '/api/workspaces/:workspace_id/widget/board-roles/get',
          requiredAuthorization: true,
          jsonPayload: true,
        ),
        alchemistQuery: AlchemistQuery(
          requestField: requestField ?? RolesBoardRequestField.all,
        ),
        workspaceId: workspaceId,
        authorization: await _tokenProvider(),
        dataHandler: (json) => (json['data'] as List)
            .map(
              (e) => _mapResponse(RolesBoardResponse.fromJson(e)),
            )
            .toList(),
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
