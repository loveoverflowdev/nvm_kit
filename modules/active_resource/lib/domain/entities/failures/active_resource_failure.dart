import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_failure/app_failure.dart';

part 'active_resource_failure.freezed.dart';

@freezed
class ActiveResourceFailure with _$ActiveResourceFailure implements AppFailure {
  ActiveResourceFailure._();

  @override
  bool get isUnauthorized => this is _Unauthorized;

  factory ActiveResourceFailure.badRequest({
    required String message,
    StackTrace? stackTrace,
  }) = _BadRequest;
  factory ActiveResourceFailure.unauthorized({
    required Object error,
    StackTrace? stackTrace,
  }) = _Unauthorized;
  factory ActiveResourceFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory ActiveResourceFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory ActiveResourceFailure.unimplemented({
    required Object error,
    StackTrace? stackTrace,
  }) = _Unimplemented;

  @override
  StackTrace? get stackTrace => when(
        badRequest: (_, stackTrace) => stackTrace,
        internalServer: (stackTrace) => stackTrace,
        apiConnection: (stackTrace) => stackTrace,
        unimplemented: (_, stackTrace) => stackTrace,
        unauthorized: (_, stackTrace) => stackTrace,
      );

  @override
  String toString() {
    if (this is _BadRequest) {
      return (this as _BadRequest).message;
    }
    return super.toString();
  }

  factory ActiveResourceFailure.fromError(
    Object failure, {
    StackTrace? stackTrace,
  }) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => ActiveResourceFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => ActiveResourceFailure.unauthorized(error: failure),
        500 => ActiveResourceFailure.internalServer(),
        -1 => ActiveResourceFailure.internalServer(),
        _ => ActiveResourceFailure.unimplemented(
            error: failure,
            stackTrace: stackTrace,
          ),
      };
    }
    return ActiveResourceFailure.unimplemented(
        error: failure, stackTrace: stackTrace);
  }
}
