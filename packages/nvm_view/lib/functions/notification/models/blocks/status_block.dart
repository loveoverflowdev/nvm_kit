import 'package:flutter/material.dart' show Color;

final class StatusBlock {
  final String name;
  final String code;
  final String icon;
  final Color? color;

  StatusBlock({
    required this.name,
    required this.code,
    required this.icon,
    required this.color,
  });

  factory StatusBlock.empty() {
    return StatusBlock(
      name: '',
      code: '',
      icon: '',
      color: null,
    );
  }
}
