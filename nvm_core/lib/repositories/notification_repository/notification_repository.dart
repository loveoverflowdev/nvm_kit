import 'package:fpdart/fpdart.dart';
import 'package:nvm_core/common.dart';
import 'entities.dart';

abstract interface class NotificationRepository {
  TaskEither<Failure, List<Notification>> getNotificationList({
    required String workspaceId,
    RequestField? requestField,
  });

  TaskEither<Failure, Notification> createNotification({
    required String workspaceId,
    required String title,
    required String content,
    required List<NotificationActionPayload> payloads,
  });
}
