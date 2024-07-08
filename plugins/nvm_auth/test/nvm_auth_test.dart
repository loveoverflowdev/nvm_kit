import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_auth/nvm_auth.dart';

void main() async {
  final authRepo = AuthRepository.nvm(
    tokenStorage: TokenStorage.inMemory(),
    apiClient: ApiClient.nvm(),
  );

  final response = await authRepo
      .signIn(
          username: const Username.dirty('nvmteam'),
          password: const Password.dirty('nvmteam'))
      .run();

  response.getRight().toJson((response) {
    print(response.toJson());
  });
  response.getLeft().toJson((failure) {
    print(failure);
  });
}
