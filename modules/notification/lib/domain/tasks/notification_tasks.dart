import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:notification/domain.dart';
import 'package:fpdart/fpdart.dart';

ReaderTaskEither<NotificationRepository, NotificationFailure, Notification>
    createNotificationTask({
  required String workspaceId,
  required String title,
  required String content,
  required List<NotificationActionPayload> payloads,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .createNotification(
                workspaceId: workspaceId,
                title: title,
                content: content,
                payloads: payloads,
              )
              .run(),
        );

ReaderTaskEither<NotificationRepository, NotificationFailure,
    List<Notification>> getNotificationListTask({
  required String workspaceId,
  RequestField? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getNotificationList(
            workspaceId: workspaceId,
            requestField: requestField,
          )
          .run(),
    );
