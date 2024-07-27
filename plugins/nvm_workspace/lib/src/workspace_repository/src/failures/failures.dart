import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class WorkspaceFailure with _$WorkspaceFailure {
  WorkspaceFailure._();
  factory WorkspaceFailure.badRequest({required String message}) = _BadRequest;
  factory WorkspaceFailure.unauthorized() = _Unauthorized;
  factory WorkspaceFailure.internalServer() = _InternalServer;
  factory WorkspaceFailure.apiConnection() = _ApiConnection;
  factory WorkspaceFailure.unimplemented() = _Unimplemented;

  factory WorkspaceFailure.fromError(
    Object failure,
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
