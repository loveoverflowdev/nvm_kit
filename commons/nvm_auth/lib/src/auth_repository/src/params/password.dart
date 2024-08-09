import 'package:formz/formz.dart';

enum PasswordValidationError {
  empty;

  String get message {
    switch (this) {
      // TODO: Localize
      case PasswordValidationError.empty:
        return 'Password cannot be empty';
    }
  }
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
    return null;
  }
}
