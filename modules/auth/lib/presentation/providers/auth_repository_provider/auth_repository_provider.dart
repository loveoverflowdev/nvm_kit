import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:auth/data.dart';
import 'package:auth/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../token_storage_provider.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return RemoteAuthRepository(
    apiClient: ApiClient.nvm(),
    tokenStorage: ref.read(tokenStorageProvider),
  );
}
