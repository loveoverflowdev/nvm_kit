import 'package:flutter/material.dart' show Color;

class NotificationActionPayload {
  final String name;
  final String type;
  final String url;
  final Color color;
  final String status;

  NotificationActionPayload({
    required this.name,
    required this.type,
    required this.url,
    required this.color,
    required this.status,
  });
}
