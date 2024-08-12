import 'package:auth/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signin_input_provider.g.dart';

@riverpod
class SigninInput extends _$SigninInput {
  @override
  SigninForm build() {
    return SigninForm.pure();
  }

  void changeUsername(String newValue) {
    state = state.copyWith(username: Username.dirty(newValue));
  }

  void changePassword(String newValue) {
    state = state.copyWith(password: Password.dirty(newValue));
  }
}
