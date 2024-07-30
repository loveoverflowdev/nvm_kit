import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_failure.freezed.dart';

@freezed
class SigninFailure with _$SigninFailure implements Exception {
  SigninFailure._();
  factory SigninFailure.badRequest({required String message}) = _BadRequest;
  factory SigninFailure.internalServer() = _InternalServer;
  factory SigninFailure.apiConnection() = _ApiConnection;
  factory SigninFailure.unimplemented() = _Unimplemented;
  factory SigninFailure.invalidParams({
    String? usernameError,
    String? passwordError,
  }) = _InvalidParams;

  factory SigninFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => SigninFailure.badRequest(
            message: failure.body['message'],
          ),
        500 => SigninFailure.internalServer(),
        -1 => SigninFailure.internalServer(),
        _ => SigninFailure.unimplemented(),
      };
    }
    return SigninFailure.unimplemented();
  }
}
