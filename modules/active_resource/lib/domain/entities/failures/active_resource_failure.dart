import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_resource_failure.freezed.dart';

@freezed
class ActiveResourceFailure with _$ActiveResourceFailure implements Exception {
  ActiveResourceFailure._();
  factory ActiveResourceFailure.badRequest({required String message}) =
      _BadRequest;
  factory ActiveResourceFailure.unauthorized() = _Unauthorized;
  factory ActiveResourceFailure.internalServer() = _InternalServer;
  factory ActiveResourceFailure.apiConnection() = _ApiConnection;
  factory ActiveResourceFailure.unimplemented() = _Unimplemented;

  factory ActiveResourceFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => ActiveResourceFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => ActiveResourceFailure.unauthorized(),
        500 => ActiveResourceFailure.internalServer(),
        -1 => ActiveResourceFailure.internalServer(),
        _ => ActiveResourceFailure.unimplemented(),
      };
    }
    return ActiveResourceFailure.unimplemented();
  }
}
