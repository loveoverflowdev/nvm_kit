import 'dart:async';

abstract class TokenStorage {
  TokenStorage();

  factory TokenStorage.inMemory() => _InMemoryTokenStorage();

  Future<String?> readAccessToken();
  Future<String?> readRefreshToken();
  Future<void> clear();
  Future<void> save({
    required String accessToken,
    required String refreshToken,
  });
}

class _InMemoryTokenStorage extends TokenStorage {
  String? _accessToken;
  String? _refreshToken;

  @override
  Future<String?> readRefreshToken() async => _refreshToken;

  @override
  Future<String?> readAccessToken() async => _accessToken;

  @override
  Future<void> clear() async {
    _accessToken = null;
    _refreshToken = null;
  }

  @override
  Future<void> save({
    required String accessToken,
    required String refreshToken,
  }) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
  }
}

// class LocalSecureTokenStorage implements TokenStorage {
//   final FlutterSecureStorage _flutterSecureStorage;

//   static const String _accessTokenKey =
//       'LocalSecureTokenStorage.accessTokenKey';
//   static const String _refreshTokenKey =
//       'LocalSecureTokenStorage.refreshTokenKey';

//   LocalSecureTokenStorage({
//     required FlutterSecureStorage flutterSecureStorage,
//   }) : _flutterSecureStorage = flutterSecureStorage;

//   @override
//   Future<void> clearAll() async {
//     await _flutterSecureStorage.delete(key: _accessTokenKey);
//     await _flutterSecureStorage.delete(key: _refreshTokenKey);
//   }

//   @override
//   Future<String?> readAccessToken() {
//     return _flutterSecureStorage.read(key: _accessTokenKey);
//   }

//   @override
//   Future<String?> readRefreshToken() {
//     return _flutterSecureStorage.read(key: _accessTokenKey);
//   }

//   @override
//   Future<void> saveAuthorizedTokens({
//     required String accessToken,
//     required String refreshToken,
//   }) async {
//     await _flutterSecureStorage.write(
//       key: _accessTokenKey,
//       value: accessToken,
//     );
//     await _flutterSecureStorage.write(
//       key: _refreshTokenKey,
//       value: refreshToken,
//     );
//   }
// }
