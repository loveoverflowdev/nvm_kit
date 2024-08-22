import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class NotificationRepository {
  TaskEither<NotificationFailure, List<Notification>> getNotificationList({
    required String workspaceId,
  });

  TaskEither<NotificationFailure, void> createNotification({
    required String workspaceId,
    required String title,
    required String content,
    required List<NotificationActionInput> inputs,
  });
}
