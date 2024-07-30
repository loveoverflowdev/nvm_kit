import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class NotificationFailure with _$NotificationFailure implements Exception {
  NotificationFailure._();
  factory NotificationFailure.badRequest({required String message}) =
      _BadRequest;
  factory NotificationFailure.unauthorized() = _Unauthorized;
  factory NotificationFailure.internalServer() = _InternalServer;
  factory NotificationFailure.apiConnection() = _ApiConnection;
  factory NotificationFailure.unimplemented() = _Unimplemented;

  factory NotificationFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => NotificationFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => NotificationFailure.unauthorized(),
        500 => NotificationFailure.internalServer(),
        -1 => NotificationFailure.internalServer(),
        _ => NotificationFailure.unimplemented(),
      };
    }
    return NotificationFailure.unimplemented();
  }
}
