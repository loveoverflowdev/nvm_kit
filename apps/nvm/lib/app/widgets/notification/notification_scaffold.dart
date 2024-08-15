import 'package:flutter/material.dart';
import 'package:notification/notification.dart';

class NotificationScaffold extends StatelessWidget {
  const NotificationScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: const NotificationListView(),
    );
  }
}
