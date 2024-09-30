import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

ReaderTaskEither<RemoteRolesBoardRepository, RolesBoardFailure,
    List<RolesBoard>> getRemoteRolesBoardListTask({
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
          (repository) => repository.getRolesBoardList().run(),
        );

ReaderTaskEither<LocalRolesBoardRepository, RolesBoardFailure, bool>
    writeLocalRolesBoardListTask({
  required List<RolesBoard> rolesBoardList,
}) =>
        ReaderTaskEither(
          (repository) => repository.writeRolesBoardList(rolesBoardList).run(),
        );

ReaderTaskEither<RolesBoardResourceStateRepository, RolesBoardFailure, dynamic>
    updateRolesBoardResourceRoleProgressTask({
  required String activeStructureCode,
  required String resourceId,
  required RolesBoardRoleProgressPayload payload,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .updateRolesBoardResourceRoleProgress(
                activeStructureCode: activeStructureCode,
                resourceId: resourceId,
                payload: payload,
              )
              .run(),
        );

ReaderTaskEither<RolesBoardResourceStateRepository, RolesBoardFailure, dynamic>
    updateRolesBoardResourceRoleStatusTask({
  required String activeStructureCode,
  required String resourceId,
  required RolesBoardRoleStatusPayload payload,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .updateRolesBoardResourceRoleStatus(
                activeStructureCode: activeStructureCode,
                resourceId: resourceId,
                payload: payload,
              )
              .run(),
        );

ReaderTaskEither<RolesBoardResourceStateRepository, RolesBoardFailure, dynamic>
    updateRolesBoardResourceRoleAssigneeTask({
  required String activeStructureCode,
  required String resourceId,
  required RolesBoardRoleAssigneePayload payload,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .updateRolesBoardResourceRoleAssignee(
                activeStructureCode: activeStructureCode,
                resourceId: resourceId,
                payload: payload,
              )
              .run(),
        );

@Deprecated('This code will remove when permission is required')
ReaderTaskEither<RolesBoardUserRepository, RolesBoardFailure, List<User>>
    getAllUsersTask() => ReaderTaskEither(
          (repository) => repository.getAllUsers().run(),
        );

@Deprecated('This code will remove when permission is required')
ReaderTaskEither<RolesBoardUserRepository, RolesBoardFailure, User>
    getUserByIdTask(
  String id,
) =>
        ReaderTaskEither(
          (repository) => repository.getUserById(id).run(),
        );
