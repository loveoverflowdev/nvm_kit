import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class UserFailure with _$UserFailure implements Exception {
  UserFailure._();
  factory UserFailure.badRequest({required String message, StackTrace? stackTrace,}) = _BadRequest;
  factory UserFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory UserFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory UserFailure.unimplemented({
    StackTrace? stackTrace,
  }) = _Unimplemented;
  factory UserFailure.invalidParams({
    String? usernameError,
    String? passwordError,
    StackTrace? stackTrace,
  }) = _InvalidParams;
  factory UserFailure.unauthorized({
    required Object error,
    StackTrace? stackTrace,
  }) = _Unauthorized;

  @override
  String toString() {
    if (this is _BadRequest) {
      return (this as _BadRequest).message;
    }
    return super.toString();
  }

  StackTrace? get stackTrace => when(
    badRequest: (_, stackTrace) => stackTrace,
    internalServer: (stackTrace) => stackTrace,
    apiConnection: (stackTrace) => stackTrace,
    unimplemented: (stackTrace) => stackTrace, 
    unauthorized: (_, stackTrace) => stackTrace, 
    invalidParams: (_, __, stackTrace) => stackTrace, 
  );

  factory UserFailure.fromError(
    Object failure, {
      StackTrace? stackTrace,
    }
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => UserFailure.badRequest(
            message: failure.body['message'],
          ),
        500 => UserFailure.internalServer(),
        -1 => UserFailure.internalServer(),
        _ => UserFailure.unimplemented(),
      };
    }
    return UserFailure.unimplemented();
  }
}
