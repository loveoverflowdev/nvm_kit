import 'package:alchemist_api_client/alchemist_api_client.dart';

extension NotificationRequestField on RequestField {
  static final id = RequestField.name('id');
  static final title = RequestField.name('notificationTitle');
  static final content = RequestField.name('notificationContent');
  static final actions = RequestField.name('actions');
  static final status = RequestField.name('status');
  static final createdBy = RequestField.name('createdBy');
  static final createdAt = RequestField.name('createdAt');
  static final all = RequestField.children([
    id,
    title,
    content,
    actions,
    status,
    createdBy,
    createdAt,
  ]);
}
