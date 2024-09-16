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
        final rolesBoardListString = _sharedPreferences.getStringList('${_namespaceKey}/roles_board_list');
        if (rolesBoardListString == null) return Future.value([]);
        return Future.value(rolesBoardListString
          .map((string) => RolesBoard.fromJson(jsonDecode(string) as Map<String, dynamic>))
          .toList(),
        );
      },
      (error, stackTrace) => RolesBoardFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<RolesBoardFailure, bool> writeRolesBoardList(List<RolesBoard> rolesBoardList) {
    return TaskEither.tryCatch(
      () {
        final stringList = rolesBoardList.map((rolesBoard) => jsonEncode(rolesBoard.toJson())).toList();
        final result =_sharedPreferences.setStringList('${_namespaceKey}/roles_board_list', stringList);
        return result;
      },
      (error, stackTrace) => RolesBoardFailure.fromError(error, stackTrace: stackTrace),
    );
  }
}

/*
final class CachedActiveStructureStorage implements ActiveStructureStorage {
  final SharedPreferences _sharedPreferences;
  static const String _activeStructureNamspaceKey = 'active_structure@';

  CachedActiveStructureStorage({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  @override
  Future<ActiveStructure?> readActiveStructureByCode(String code) async {
    final activeStructureString = _sharedPreferences.getString(code);
    if (activeStructureString != null) {
      final activeStructure =
          ActiveStructure.fromJson(jsonDecode(activeStructureString));
      return activeStructure;
    }
    return null;
  }

  @override
  Future<List<ActiveStructure>> readActiveStructureList() {
    final results = <ActiveStructure>[];
    final keys = _sharedPreferences
        .getKeys()
        .where((key) => key.startsWith(_activeStructureNamspaceKey));
    for (final key in keys) {
      final activeStructureString = _sharedPreferences.getString(key)!;
      final activeStructure =
          ActiveStructure.fromJson(jsonDecode(activeStructureString));
      results.add(activeStructure);
    }
    return Future.value(results);
  }

  @override
  Future<bool> writeActiveStructure(ActiveStructure activeStructure) async {
    final activeStructureString = jsonEncode(activeStructure.toJson());
    final r1 = await _sharedPreferences.setString(
        _activeStructureNamspaceKey + activeStructure.code,
        activeStructureString);
    final r2 = await _sharedPreferences.setString(
        _activeStructureNamspaceKey + activeStructure.id,
        activeStructureString);
    return r1 && r2;
  }
}

*/