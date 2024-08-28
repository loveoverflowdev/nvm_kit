import 'dart:convert';

import 'package:active_resource/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class CachedActiveStructureStorage implements ActiveStructureStorage {
  final SharedPreferences _sharedPreferences;

  CachedActiveStructureStorage({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  @override
  Future<ActiveStructure?> readActiveStructure({
    required String code,
  }) async {
    final activeStructureString = _sharedPreferences.getString(code);
    if (activeStructureString != null) {
      final activeStructure =
          ActiveStructure.fromJson(jsonDecode(activeStructureString));
      return activeStructure;
    }
    return null;
  }

  @override
  Future<String?> readActiveStructureId({
    required String code,
  }) async {
    final activeStructureString = _sharedPreferences.getString(code);
    if (activeStructureString != null) {
      final activeStructure =
          ActiveStructure.fromJson(jsonDecode(activeStructureString));
      return activeStructure.id;
    }
    return null;
  }

  @override
  Future<bool> writeActiveStructure({
    required String code,
    required ActiveStructure activeStructure,
  }) {
    final activeStructureString = jsonEncode(activeStructure.toJson());
    return _sharedPreferences.setString(code, activeStructureString);
  }
}
