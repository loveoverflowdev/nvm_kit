import 'package:alchemist_api_client/alchemist_api_client.dart';

import '../../../../core/failures.dart';

abstract class SigninFailure extends AuthFailure {
  SigninFailure();

  factory SigninFailure.invalidParams({
    String? usernameError,
    String? passwordError,
  }) {
    return SigninInvalidParamsFailure(
      usernameError: usernameError,
      passwordError: passwordError,
    );
  }

  factory SigninFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      switch (failure.statusCode) {
        case 400:
          return SigninBadRequestFailure(
            message: failure.body['message'],
          );
        case 401:
          return SigninUnauthorizedFailure();
        case 500:
          return SigninInternalServerFailure();
        case -1:
          return SigninApiConnectionFailure();
        default:
          return SigninUnimplementedFailure();
      }
    }
    return SigninUnimplementedFailure();
  }
}

class SigninUnauthorizedFailure implements SigninFailure {}

class SigninInvalidParamsFailure implements SigninFailure {
  SigninInvalidParamsFailure({
    this.usernameError,
    this.passwordError,
  });

  final String? usernameError;
  final String? passwordError;
}

class SigninBadRequestFailure implements SigninFailure {
  SigninBadRequestFailure({
    this.message,
  });

  final String? message;
}

class SigninApiConnectionFailure implements SigninFailure {}

class SigninInternalServerFailure implements SigninFailure {}

class SigninUnimplementedFailure implements SigninFailure {}
