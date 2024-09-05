import 'token_storage.dart';

final class InMemoryTokenStorage implements TokenStorage {
  String? _accessToken;
  String? _refreshToken;
  String? _userId;

  @override
  Future<String?> readRefreshToken() async => _refreshToken;

  @override
  Future<String?> readAccessToken() async => _accessToken;

  @override
  Future<String?> readUserId() async => _userId;

  @override
  Future<void> clear() async {
    _accessToken = null;
    _refreshToken = null;
    _userId = null;
  }

  @override
  Future<void> save({
    required String accessToken,
    required String refreshToken,
    required String userId,
  }) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _userId = userId;
  }
}
