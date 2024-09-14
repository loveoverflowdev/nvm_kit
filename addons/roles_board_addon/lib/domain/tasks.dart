import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

ReaderTaskEither<RolesBoardRepository, RolesBoardFailure, List<RolesBoard>>
    getRolesBoardListTask({
  String? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getRolesBoardList(
                requestField: requestField,
              )
              .run(),
        );
