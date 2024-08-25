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

  Map<String, dynamic> toJson() => {
        'actionName': actionName,
        'actionType': actionType,
        'url': url,
        'actionColor': actionColor,
        'actionStatus': actionStatus,
      };
}
