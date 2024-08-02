import 'notification_action.dart';

class Notification {
  final String id;
  final String title;
  final String content;

  final List<NotificationAction> actionList;

  Notification({
    required this.id,
    required this.title,
    required this.content,
    required this.actionList,
  });
}
