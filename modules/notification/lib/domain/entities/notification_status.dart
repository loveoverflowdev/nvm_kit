import 'package:flutter/material.dart' show Color;

final class NotificationStatus {
  final String name;
  final String code;
  final String icon;
  final Color? color;

  NotificationStatus({
    required this.name,
    required this.code,
    required this.icon,
    required this.color,
  });
}
