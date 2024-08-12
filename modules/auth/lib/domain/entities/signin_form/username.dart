import 'package:formz/formz.dart';

enum UsernameValidationError {
  empty;

  String get message {
    switch (this) {
      // TODO: Localize
      case UsernameValidationError.empty:
        return 'Username cannot be empty';
    }
  }
}

class Username extends FormzInput<String, UsernameValidationError> {
  const Username.pure() : super.pure('');
  const Username.dirty([super.value = '']) : super.dirty();

  @override
  UsernameValidationError? validator(String value) {
    if (value.isEmpty) return UsernameValidationError.empty;
    return null;
  }
}
