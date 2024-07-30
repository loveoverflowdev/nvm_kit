import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:flutter/foundation.dart';
import 'package:nvm_auth/nvm_auth.dart';

void main() async {
  final authRepo = NvmAuthRepository(
    tokenStorage: TokenStorage.inMemory(),
    apiClient: ApiClient.nvm(),
  );

  final response = await authRepo
      .signIn(
          username: const Username.dirty('nvmteam'),
          password: const Password.dirty('nvmteam'))
      .run();

  response.getRight().toJson((response) {
    debugPrint(response.toJson().toString());
  });
  response.getLeft().toJson((failure) {
    debugPrint(failure.toString());
  });
}
