import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../functions/functions.dart';

part 'providers.g.dart';

typedef SigninSubmitState = AsyncValue<SigninBlock?>;

@riverpod
class SigninSubmit extends _$SigninSubmit {
  @override
  SigninSubmitState build() => const SigninSubmitState.data(null);

  void submit({
    required SigninForm form,
  }) {
    state = const AsyncValue.loading();

    signinFunction(
      form: form,
    ).match((failure) {
      state = SigninSubmitState.error(failure.error, failure.stackTrace);
    }, (block) {
      state = SigninSubmitState.data(block);
    }).run();
  }
}

@riverpod
class SigninInput extends _$SigninInput {
  @override
  SigninForm build() {
    return SigninForm.pure();
  }

  void changeUsername(String newValue) {
    state = state.copyWith(username: Username.dirty(value: newValue));
  }

  void changePassword(String newValue) {
    state = state.copyWith(password: Password.dirty(value: newValue));
  }
}
