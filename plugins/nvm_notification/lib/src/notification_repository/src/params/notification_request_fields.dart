import 'package:alchemist_api_client/alchemist_api_client.dart';

abstract class NotificationRequestField {
  static final RequestField id = RequestField.name('id');
  static final RequestField title = RequestField.name('notificationTitle');
  static final RequestField content = RequestField.name('notificationContent');
  static final RequestField actions = RequestField.name('actions');
  static final RequestField status = RequestField.name('status');
  static final RequestField createdBy = RequestField.name('createdBy');
  static final RequestField createdAt = RequestField.name('createdAt');
  static final RequestField all = RequestField.children([
    id,
    title,
    content,
    actions,
    status,
    createdBy,
    createdAt,
  ]);
}

// final NotificationRequestField notificationTitle =
//     NotificationRequestField(jsonKey: 'notificationTitle');
// enum NotificationRequestField {
//   notificationTitle(jsonKey: 'notificationTitle'),
//   notificationContent(jsonKey: 'notificationContent'),
//   actions(jsonKey: 'actions'),
//   status(jsonKey: 'status'),
//   createdBy(jsonKey: 'createdBy'),
//   createdAt(jsonKey: 'createdAt');

//   final String jsonKey;

//   const NotificationRequestField({
//     required this.jsonKey,
//   });
// }
