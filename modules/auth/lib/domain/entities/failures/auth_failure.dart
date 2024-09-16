import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_failure/app_failure.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure implements AppFailure {
  AuthFailure._();

  @override

  /// Currently AuthFailure just [isUnauthorized] because auth just have signin api
  bool get isUnauthorized => false;

  factory AuthFailure.badRequest({
    required String message,
    StackTrace? stackTrace,
  }) = _BadRequest;
  factory AuthFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory AuthFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory AuthFailure.unimplemented({
    StackTrace? stackTrace,
  }) = _Unimplemented;
  factory AuthFailure.invalidParams({
    String? usernameError,
    String? passwordError,
    StackTrace? stackTrace,
  }) = _InvalidParams;

  @override
  String toString() {
    if (this is _BadRequest) {
      return (this as _BadRequest).message;
    }
    return super.toString();
  }

  @override
  StackTrace? get stackTrace => when(
        badRequest: (_, stackTrace) => stackTrace,
        internalServer: (stackTrace) => stackTrace,
        apiConnection: (stackTrace) => stackTrace,
        unimplemented: (stackTrace) => stackTrace,
        invalidParams: (_, __, stackTrace) => stackTrace,
      );

  factory AuthFailure.fromError(
    Object failure, {
    StackTrace? stackTrace,
  }) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => AuthFailure.badRequest(
            message: failure.body['message'],
          ),
        500 => AuthFailure.internalServer(),
        -1 => AuthFailure.internalServer(),
        _ => AuthFailure.unimplemented(),
      };
    }
    return AuthFailure.unimplemented();
  }
}
