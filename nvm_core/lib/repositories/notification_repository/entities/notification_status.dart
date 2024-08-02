import 'package:flutter/material.dart' show IconData, Color;

class NotificationStatus {
  final String name;
  final String code;
  final IconData icon;
  final Color color;

  NotificationStatus({
    required this.name,
    required this.code,
    required this.icon,
    required this.color,
  });
}
