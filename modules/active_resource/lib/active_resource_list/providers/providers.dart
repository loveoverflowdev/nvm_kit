import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../functions/functions.dart';

typedef ActiveResourceListState = AsyncValue<ActiveResourceBlock?>;

/*
import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:nvm_auth/nvm_auth.dart';
import '../functions/functions.dart';

part 'providers.g.dart';

@riverpod
TokenStorage tokenStorage(TokenStorageRef ref) => TokenStorage.inMemory();

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepository.nvm(
    apiClient: ApiClient.nvm(),
    tokenStorage: ref.read(tokenStorageProvider),
  );
}

typedef SigninSubmitState = AsyncValue<SigninBlock?>;

@riverpod
class SigninSubmit extends _$SigninSubmit {
  @override
  SigninSubmitState build() => const SigninSubmitState.data(null);

  void submit({
    required SigninForm form,
  }) {
    state = const AsyncValue.loading();
    signIn(
      username: form.username,
      password: form.password,
    ).match((failure) {
      state = SigninSubmitState.error(
        failure,
        StackTrace.current,
      );
    }, (block) {
      state = SigninSubmitState.data(
        block,
      );
    }).run(
      ref.read(authRepositoryProvider),
    );
  }
}

*/