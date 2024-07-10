// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:formz/formz.dart';

import 'password.dart';
import 'username.dart';

class SigninForm {
  final Username username;
  final Password password;

  SigninForm({
    required this.username,
    required this.password,
  });

  factory SigninForm.pure() {
    return SigninForm(
      username: const Username.pure(),
      password: const Password.pure(),
    );
  }

  bool get isValid => Formz.validate([username, password]);

  SigninForm copyWith({
    Username? username,
    Password? password,
  }) {
    return SigninForm(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
