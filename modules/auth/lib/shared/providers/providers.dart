import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_auth/nvm_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
ApiClient apiClient(ApiClientRef ref) => ApiClient.nvm();

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) => AuthRepository.nvm(
      apiClient: ref.read(apiClientProvider),
      tokenStorage: TokenStorage.inMemory(),
    );
