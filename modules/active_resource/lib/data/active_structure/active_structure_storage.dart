import 'package:active_resource/active_resource.dart';
import 'dart:convert';

import 'package:active_resource/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class ActiveStructureStorage {
  Future<ActiveStructure?> readActiveStructureByCode(String code);

  Future<List<ActiveStructure>> readActiveStructureList();

  Future<bool> writeActiveStructure(ActiveStructure activeStructure);
}

final class CachedActiveStructureStorage implements ActiveStructureStorage {
  final SharedPreferences _sharedPreferences;
  static String _activeStructureNamspaceKey = 'active_structure@';

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
    final keys = _sharedPreferences.getKeys().where((key) => key.startsWith(_activeStructureNamspaceKey));
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
    final r1 = await _sharedPreferences.setString(_activeStructureNamspaceKey + activeStructure.code, activeStructureString);
    final r2 = await _sharedPreferences.setString(_activeStructureNamspaceKey + activeStructure.id, activeStructureString);
    return r1 && r2;
  }
}
