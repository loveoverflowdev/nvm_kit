import 'notification_action.dart';

final class Notification {
  final String title;
  final String content;
  final List<NotificationAction> actionList;

  Notification({
    required this.title,
    required this.content,
    required this.actionList,
  });
}
