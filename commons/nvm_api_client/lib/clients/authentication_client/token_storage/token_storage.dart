import 'dart:async';

import 'in_memory_token_storage.dart';
import 'persistent_token_storage.dart';

abstract class TokenStorage {
  TokenStorage();

  factory TokenStorage.inMemory() => InMemoryTokenStorage();
  factory TokenStorage.persistent() => PersistentTokenStorage();

  Future<String?> readAccessToken();
  Future<String?> readRefreshToken();
  Future<String?> readUserId();

  Future<void> clear();
  Future<void> save({
    required String userId,
    required String accessToken,
    required String refreshToken,
  });
}
