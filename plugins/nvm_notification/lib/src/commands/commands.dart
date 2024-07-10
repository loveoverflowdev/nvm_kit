import 'package:fpdart/fpdart.dart';

import '../repositories/repositories.dart';

ReaderTaskEither<NotificationRepository, NotificationFailure,
    NotificationResponse> createNotification({
  required String workspaceId,
  required String title,
  required String content,
  required List<ActionPayload> payloads,
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
    List<NotificationResponse>> getNotificationList({
  required String workspaceId,
  required NotificationRequestField requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getNotificationList(
            workspaceId: workspaceId,
            requestField: requestField,
          )
          .run(),
    );
