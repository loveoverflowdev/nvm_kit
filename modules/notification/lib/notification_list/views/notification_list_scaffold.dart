import 'package:flutter/material.dart';

import 'notification_list_view.dart';

class NotificationListScaffold extends StatelessWidget {
  const NotificationListScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification List'),
      ),
      body: const NotificationListView(),
    );
  }
}
