import 'package:active_resource/active_resource.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class LocalActiveStructureRepository {
  TaskEither<ActiveStructureFailure, List<ActiveStructure>>
      readActiveStructureList();

  TaskEither<ActiveStructureFailure, ActiveStructure?>
      readActiveStructureByCode(
    String code,
  );

  TaskEither<ActiveStructureFailure, ActiveStructure?> readActiveStructureById(
    String id,
  );

  TaskEither<ActiveStructureFailure, dynamic> clearAll();

  TaskEither<ActiveStructureFailure, bool> writeActiveStructureList(
    List<ActiveStructure> activeStructureList,
  );
}


/*
final SharedPreferences _sharedPreferences;
  static const String _namespaceKey = 'local_roles_board_repository_impl@';

  LocalRolesBoardRepositoryImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  @override
  TaskEither<RolesBoardFailure, dynamic> clearAll() {
    throw UnimplementedError();
  }

  @override
  TaskEither<RolesBoardFailure, List<RolesBoard>> getRolesBoardList() {
    return TaskEither.tryCatch(
      () {
        final rolesBoardListString = _sharedPreferences.getStringList(
          '$_namespaceKey/roles_board_list',
        );
        if (rolesBoardListString == null) return Future.value([]);
        return Future.value(
          rolesBoardListString
              .map((string) => RolesBoard.fromJson(
                  jsonDecode(string) as Map<String, dynamic>))
              .toList(),
        );
      },
      (error, stackTrace) =>
          RolesBoardFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<RolesBoardFailure, bool> writeRolesBoardList(
      List<RolesBoard> rolesBoardList) {
    return TaskEither.tryCatch(
      () {
        final stringList = rolesBoardList
            .map((rolesBoard) => jsonEncode(rolesBoard.toJson()))
            .toList();
        final result = _sharedPreferences.setStringList(
            '$_namespaceKey/roles_board_list', stringList);
        return result;
      },
      (error, stackTrace) =>
          RolesBoardFailure.fromError(error, stackTrace: stackTrace),
    );
  }
*/