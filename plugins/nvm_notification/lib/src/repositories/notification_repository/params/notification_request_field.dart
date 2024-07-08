enum NotificationRequestField {
  notificationTitle(jsonKey: 'notificationTitle'),
  notificationContent(jsonKey: 'notificationContent'),
  actions(jsonKey: 'actions'),
  status(jsonKey: 'status'),
  createdBy(jsonKey: 'createdBy'),
  createdAt(jsonKey: 'createdAt');

  final String jsonKey;

  const NotificationRequestField({
    required this.jsonKey,
  });
}
