import 'package:flutter/material.dart' show Color;

import 'notification_status.dart';

final class NotificationAction {
  final String id;
  final String type;
  final Color? color;
  final String name;
  final NotificationStatus status;

  NotificationAction({
    required this.id,
    required this.type,
    required this.color,
    required this.name,
    required this.status,
  });
}
