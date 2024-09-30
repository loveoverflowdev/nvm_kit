import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

abstract interface class RolesBoardResourceStateRepository {
  TaskEither<RolesBoardFailure, dynamic> updateRolesBoardResourceRoleProgress({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleProgressPayload payload,
  });

  TaskEither<RolesBoardFailure, dynamic> updateRolesBoardResourceRoleStatus({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleStatusPayload payload,
  });

  TaskEither<RolesBoardFailure, dynamic> updateRolesBoardResourceRoleAssignee({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleAssigneePayload payload,
  });
}

/*
Future<dynamic> updateRolesBoardResourceRoleProgress({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleProgressPayload payload,
  }) {
    return _requestJson(
      endpoint: endpoints.updateRolesBoardResourceRoleProgress(
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
      ),
      payload: payload.toJson(),
      dataHandler: (json) => json,
    );
  }

  Future<dynamic> updateRolesBoardResourceRoleStatus({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleStatusPayload payload,
  }) {
    return _requestJson(
      endpoint: endpoints.updateRolesBoardResourceRoleStatus(
        activeStructureCode: activeStructureCode, 
        resourceId: resourceId,
      ), 
      payload: payload.toJson(),
      dataHandler: (json) => json,
    );
  }
*/
