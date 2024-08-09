import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;
import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class NotificationRepository {
  TaskEither<NotificationFailure, List<Notification>> getNotificationList({
    required String workspaceId,
    RequestField? requestField,
  });

  TaskEither<NotificationFailure, Notification> createNotification({
    required String workspaceId,
    required String title,
    required String content,
    required List<NotificationActionPayload> payloads,
  });
}
