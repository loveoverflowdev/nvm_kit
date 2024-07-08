import 'package:fpdart/fpdart.dart';
import 'models/models.dart';

final GetNotificationFunction getNotificationFunction =
    () => TaskEither.right([]);

CreateNotificationFunction createNotificationFunction = ({
  required NotificationForm notificationForm,
}) =>
    TaskEither.right(null);

typedef GetNotificationFunction
    = TaskEither<NotificationFailure, List<NotificationBlock>> Function();

typedef CreateNotificationFunction = TaskEither<NotificationFailure, dynamic>
    Function({
  required NotificationForm notificationForm,
});
