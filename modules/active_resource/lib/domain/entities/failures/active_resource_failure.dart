import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_resource_failure.freezed.dart';

@freezed
class ActiveResourceFailure with _$ActiveResourceFailure implements Exception {
  ActiveResourceFailure._();
  factory ActiveResourceFailure.badRequest({required String message}) =
      _BadRequest;
  factory ActiveResourceFailure.unauthorized({
    required Object error,
  }) = _Unauthorized;
  factory ActiveResourceFailure.internalServer() = _InternalServer;
  factory ActiveResourceFailure.apiConnection() = _ApiConnection;
  factory ActiveResourceFailure.unimplemented({
    required Object error,
    required StackTrace stackTrace,
  }) = _Unimplemented;

  @override
  String toString() {
    if (this is _BadRequest) {
      return (this as _BadRequest).message;
    }
    return super.toString();
  }

  StackTrace? get stackTrace =>
      (this is _Unimplemented ? (this as _Unimplemented).stackTrace : null);

  factory ActiveResourceFailure.fromError(
    Object failure,
    StackTrace stackTrace,
  ) {
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
