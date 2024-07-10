import 'package:formz/formz.dart';

enum UsernameError {
  empty;

  String get errorText {
    switch (this) {
      case UsernameError.empty:
        return 'Username cannot be empty';
    }
  }
}

class Username extends FormzInput<String, UsernameError> {
  const Username.pure() : super.pure('');

  const Username.dirty({String value = ''}) : super.dirty(value);

  @override
  UsernameError? validator(String value) {
    return value.isEmpty ? UsernameError.empty : null;
  }
}
