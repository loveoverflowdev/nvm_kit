import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class NotificationRepository {
  TaskEither<NotificationFailure, List<Notification>> getNotificationList();

  TaskEither<NotificationFailure, void> createNotification({
    required String title,
    required String content,
    required List<NotificationActionInput> inputs,
  });
}
