import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain/entities.dart';

abstract interface class RemoteRolesBoardRepository {
  TaskEither<RolesBoardFailure, List<RolesBoard>> getRolesBoardList({
    String? requestField,
  });
}
