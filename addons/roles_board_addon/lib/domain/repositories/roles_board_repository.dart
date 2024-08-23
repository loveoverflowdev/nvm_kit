import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain/entities.dart';

abstract interface class RolesBoardRepository {
  TaskEither<RolesBoardFailure, List<RolesBoard>> getRolesBoardList({
    required String resourceCode,
    required String resourceId,
    RequestField? requestField,
  });
}
