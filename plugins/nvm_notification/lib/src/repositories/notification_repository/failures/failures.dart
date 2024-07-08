import 'package:alchemist_api_client/alchemist_api_client.dart';

abstract class NotificationFailure {
  const NotificationFailure();

  factory NotificationFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      switch (failure.statusCode) {
        case 400:
          return NotificationBadRequestFailure(
            message: failure.body['message'],
          );
        case 500:
          return NotificationServerInternalFailure();
        case -1:
          return NotificationApiConnectionFailure();
        default:
          return NotificationUnimplementedFailure();
      }
    }
    return NotificationUnimplementedFailure();
  }
}

class NotificationUnauthorizedFailure {}

class NotificationBadRequestFailure extends NotificationFailure {
  NotificationBadRequestFailure({
    this.message,
  });

  final String? message;
}

class NotificationServerInternalFailure extends NotificationFailure {}

class NotificationNotFoundFailure extends NotificationFailure {}

class NotificationApiConnectionFailure implements NotificationFailure {}

class NotificationUnimplementedFailure extends NotificationFailure {}
