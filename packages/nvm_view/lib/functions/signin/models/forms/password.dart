import 'package:formz/formz.dart';

enum PasswordError {
  empty;

  String get errorText {
    switch (this) {
      case PasswordError.empty:
        return 'Password cannot be empty';
    }
  }
}

class Password extends FormzInput<String, PasswordError> {
  const Password.pure() : super.pure('');

  const Password.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordError? validator(String value) {
    return value.isEmpty ? PasswordError.empty : null;
  }
}
