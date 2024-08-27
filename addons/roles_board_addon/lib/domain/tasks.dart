import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

ReaderTaskEither<RolesBoardRepository, RolesBoardFailure, List<RolesBoard>>
    getRolesBoardList({
  required String activeStructureCode,
  required String resourceId,
  String? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getRolesBoardList(
                activeStructureCode: activeStructureCode,
                resourceId: resourceId,
                requestField: requestField,
              )
              .run(),
        );
