import 'package:flutter/material.dart';
import 'package:notification/notification.dart' as notification;

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: const notification.NotificationListView(),
    );
  }
}
