import 'package:notification/domain.dart';
import 'package:fpdart/fpdart.dart';

ReaderTaskEither<NotificationRepository, NotificationFailure, void>
    createNotificationTask({
  required String workspaceId,
  required String title,
  required String content,
  required List<NotificationActionInput> inputs,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .createNotification(
                workspaceId: workspaceId,
                title: title,
                content: content,
                inputs: inputs,
              )
              .run(),
        );

ReaderTaskEither<NotificationRepository, NotificationFailure,
    List<Notification>> getNotificationListTask({
  required String workspaceId,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getNotificationList(
            workspaceId: workspaceId,
          )
          .run(),
    );
