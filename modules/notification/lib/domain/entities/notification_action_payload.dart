final class NotificationActionPayload {
  final String actionName;
  final String actionType;
  final String url;
  final String actionColor;
  final String actionStatus;

  NotificationActionPayload({
    required this.actionName,
    required this.actionType,
    required this.url,
    required this.actionColor,
    required this.actionStatus,
  });
}
