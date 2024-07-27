import 'package:fpdart/fpdart.dart';
import 'package:nvm_notification/nvm_notification.dart';
import 'models/models.dart';

ReaderTaskEither<NotificationRepository, NotificationFailure, NotificationBlock>
    createNotification({
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
              .map(
                (e) => NotificationBlock(
                  title: e.notificationTitle,
                  description: '',
                  content: '',
                  actionList: e.actionList,
                ),
              )
              .run(),
        );

ReaderTaskEither<NotificationRepository, NotificationFailure,
    List<NotificationBlock>> getNotificationList({
  required String workspaceId,
  NotificationRequestField? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getNotificationList(
            workspaceId: workspaceId,
            requestField: requestField,
          )
          .map(
            (response) => response
                .map(
                  (e) => NotificationBlock(
                    title: e.notificationTitle,
                    description: '',
                    content: '',
                    actionList: e.actionList,
                  ),
                )
                .toList(),
          )
          .run(),
    );


// final GetNotificationFunction getNotificationFunction =
//     () => TaskEither.right([]);

// CreateNotificationFunction createNotificationFunction = ({
//   required NotificationForm notificationForm,
// }) =>
//     TaskEither.right(null);

// typedef GetNotificationFunction
//     = TaskEither<NotificationFailure, List<NotificationBlock>> Function();

// typedef CreateNotificationFunction = TaskEither<NotificationFailure, dynamic>
//     Function({
//   required NotificationForm notificationForm,
// });
