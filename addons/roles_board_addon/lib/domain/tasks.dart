import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

ReaderTaskEither<RemoteRolesBoardRepository, RolesBoardFailure, List<RolesBoard>>
    getRemoteRolesBoardListTask({
  String? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getRolesBoardList(
                requestField: requestField,
              )
              .run(),
        );

ReaderTaskEither<LocalRolesBoardRepository, RolesBoardFailure, List<RolesBoard>>
    getLocalRolesBoardListTask({
  String? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getRolesBoardList()
              .run(),
        );

ReaderTaskEither<LocalRolesBoardRepository, RolesBoardFailure, bool>
    writeLocalRolesBoardListTask({
  required List<RolesBoard> rolesBoardList,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .writeRolesBoardList(rolesBoardList)
              .run(),
        );
