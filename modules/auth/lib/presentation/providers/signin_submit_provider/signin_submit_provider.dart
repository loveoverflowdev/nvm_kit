import 'package:auth/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../auth_repository_provider.dart';

part 'signin_submit_provider.g.dart';

typedef SigninSubmitState = AsyncValue<AuthCredentials?>;

@riverpod
class SigninSubmit extends _$SigninSubmit {
  @override
  SigninSubmitState build() => const SigninSubmitState.data(null);

  void submit({
    required SigninForm form,
  }) {
    state = const AsyncValue.loading();
    signInTask(
      form: form,
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
