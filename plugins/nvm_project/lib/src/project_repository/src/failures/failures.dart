import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ProjectFailure with _$ProjectFailure {
  ProjectFailure._();
  factory ProjectFailure.badRequest({required String message}) = _BadRequest;
  factory ProjectFailure.unauthorized() = _Unauthorized;
  factory ProjectFailure.internalServer() = _InternalServer;
  factory ProjectFailure.apiConnection() = _ApiConnection;
  factory ProjectFailure.unimplemented() = _Unimplemented;

  factory ProjectFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => ProjectFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => ProjectFailure.unauthorized(),
        500 => ProjectFailure.internalServer(),
        -1 => ProjectFailure.internalServer(),
        _ => ProjectFailure.unimplemented(),
      };
    }
    return ProjectFailure.unimplemented();
  }
}
