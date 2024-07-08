import 'package:flutter/material.dart' show Color, Colors;

import 'status_block.dart';

final class ActionBlock {
  final String id;
  final String type;
  final Color? color;
  final String name;
  final StatusBlock status;

  ActionBlock({
    required this.id,
    required this.type,
    required this.color,
    required this.name,
    required this.status,
  });

  factory ActionBlock.empty() {
    return ActionBlock(
      id: '',
      type: '',
      color: null,
      name: '',
      status: StatusBlock.empty(),
    );
  }
}
