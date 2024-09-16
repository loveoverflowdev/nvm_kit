import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class LocalRolesBoardRepositoryImpl implements LocalRolesBoardRepository {
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
}
