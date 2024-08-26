
import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

ReaderTaskEither<RolesBoardRepository, RolesBoardFailure, List<RolesBoard>> getRolesBoardList({
  required String resourceCode,
  required String resourceId,
  String? requestField,
}) => ReaderTaskEither(
  (repository) => repository.getRolesBoardList(
    resourceCode: resourceCode,
    resourceId: resourceId,
    requestField: requestField,
  ).run(),
);
