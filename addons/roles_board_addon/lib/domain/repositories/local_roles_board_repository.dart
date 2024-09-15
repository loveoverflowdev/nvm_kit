import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain/entities.dart';

abstract interface class LocalRolesBoardRepository {
  TaskEither<RolesBoardFailure, List<RolesBoard>> getRolesBoardList();
}
