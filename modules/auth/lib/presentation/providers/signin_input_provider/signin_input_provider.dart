import 'package:auth/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signinInputProvider =
    StateNotifierProvider<SigninInputNotifier, SigninForm>(
  (ref) => SigninInputNotifier(),
);

final class SigninInputNotifier extends StateNotifier<SigninForm> {
  SigninInputNotifier() : super(SigninForm.pure());

  bool get isValid => state.username.isValid && state.password.isValid;

  SigninForm getForm() => state;

  void makeDirty() {
    state = state.copyWith(
      username: Username.dirty(state.username.value),
      password: Password.dirty(state.password.value),
    );
  }

  void changeUsername(String newValue) {
    state = state.copyWith(username: Username.dirty(newValue));
  }

  void changePassword(String newValue) {
    state = state.copyWith(password: Password.dirty(newValue));
  }
}

// @riverpod
// class SigninInput extends _$SigninInput {
//   @override
//   SigninForm build() {
//     return SigninForm.pure();
//   }

//   bool get isValid => state.username.isValid && state.password.isValid;

//   SigninForm getForm() => state;

//   void makeDirty() {
//     state = state.copyWith(
//       username: Username.dirty(state.username.value),
//       password: Password.dirty(state.password.value),
//     );
//   }

//   void changeUsername(String newValue) {
//     state = state.copyWith(username: Username.dirty(newValue));
//   }

//   void changePassword(String newValue) {
//     state = state.copyWith(password: Password.dirty(newValue));
//   }
// }
