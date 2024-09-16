import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_failure/app_failure.dart';

part 'notification_failure.freezed.dart';

@freezed
class NotificationFailure with _$NotificationFailure implements AppFailure {
  NotificationFailure._();

  @override
  bool get isUnauthorized => this is _Unauthorized;

  factory NotificationFailure.badRequest({
    required String message,
    StackTrace? stackTrace,
  }) = _BadRequest;
  factory NotificationFailure.unauthorized({
    StackTrace? stackTrace,
  }) = _Unauthorized;
  factory NotificationFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory NotificationFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory NotificationFailure.unimplemented({
    StackTrace? stackTrace,
  }) = _Unimplemented;

  factory NotificationFailure.fromError(
    Object failure, {
    StackTrace? stackTrace,
  }) {
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
