import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workspace_failure.freezed.dart';

@freezed
class WorkspaceFailure with _$WorkspaceFailure implements Exception {
  WorkspaceFailure._();
  factory WorkspaceFailure.badRequest({required String message}) = _BadRequest;
  factory WorkspaceFailure.unauthorized({
    StackTrace? stackTrace,
  }) = _Unauthorized;
  factory WorkspaceFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory WorkspaceFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory WorkspaceFailure.unimplemented({
    StackTrace? stackTrace,
  }) = _Unimplemented;

  @override
  String toString() {
    if (this is _BadRequest) {
      return (this as _BadRequest).message;
    }
    return super.toString();
  }

  factory WorkspaceFailure.fromError(
    Object failure, {
      StackTrace? stackTrace,
    }
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => WorkspaceFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => WorkspaceFailure.unauthorized(),
        500 => WorkspaceFailure.internalServer(),
        -1 => WorkspaceFailure.internalServer(),
        _ => WorkspaceFailure.unimplemented(),
      };
    }
    return WorkspaceFailure.unimplemented();
  }
}
