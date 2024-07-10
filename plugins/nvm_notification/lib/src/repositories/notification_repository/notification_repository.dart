export 'failures/failures.dart';
export 'responses/responses.dart';
export 'params/params.dart';
export 'remote_notification_repository.dart';

import 'package:fpdart/fpdart.dart';
import 'failures/failures.dart';
import 'responses/responses.dart';
import 'params/params.dart';

abstract class NotificationRepository {
  NotificationRepository();

  TaskEither<NotificationFailure, List<NotificationResponse>>
      getNotificationList({
    required String workspaceId,
    required NotificationRequestField requestField,
  });

  TaskEither<NotificationFailure, NotificationResponse> createNotification({
    required String workspaceId,
    required String title,
    required String content,
    required List<ActionPayload> payloads,
  });
}
