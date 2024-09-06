import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

final class AppTimeDisplayWidget extends StatelessWidget {
  final DateTime dateTime;

  const AppTimeDisplayWidget({super.key, required this.dateTime,});

  @override
  Widget build(BuildContext context) {
    return Text(dateTime.getHumanizedDisplay());
  }
}
