import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import 'password.dart';
import 'username.dart';

final class SigninForm extends Equatable {
  final Username username;
  final Password password;

  const SigninForm({
    required this.username,
    required this.password,
  });

  factory SigninForm.pure() {
    return const SigninForm(
      username: Username.pure(),
      password: Password.pure(),
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

  @override
  List<Object?> get props => [username, password];
}
