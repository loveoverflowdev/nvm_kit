import 'package:shared_preferences/shared_preferences.dart';

import 'token_storage.dart';

const String _keyPrefix = 'persistent_token_storage@';
const String _accessTokenKey = '${_keyPrefix}access_token';
const String _refreshTokenKey = '${_keyPrefix}refresh_token';
const String _userIdKey = '${_keyPrefix}user_id';

final class PersistentTokenStorage implements TokenStorage {
  
  // Helper method to get SharedPreferences instance
  Future<SharedPreferences> _prefs() async {
    return SharedPreferences.getInstance();
  }

  @override
  Future<void> clear() async {
    final prefs = await _prefs();
    await prefs.remove(_accessTokenKey);
    await prefs.remove(_refreshTokenKey);
    await prefs.remove(_userIdKey);
  }

  @override
  Future<String?> readAccessToken() async {
    final prefs = await _prefs();
    return prefs.getString(_accessTokenKey);
  }

  @override
  Future<String?> readRefreshToken() async {
    final prefs = await _prefs();
    return prefs.getString(_refreshTokenKey);
  }

  @override
  Future<String?> readUserId() async {
    final prefs = await _prefs();
    return prefs.getString(_userIdKey);
  }

  @override
  Future<void> save({
    required String userId,
    required String accessToken,
    required String refreshToken,
  }) async {
    final prefs = await _prefs();
    await prefs.setString(_accessTokenKey, accessToken);
    await prefs.setString(_refreshTokenKey, refreshToken);
    await prefs.setString(_userIdKey, userId);
  }
}
