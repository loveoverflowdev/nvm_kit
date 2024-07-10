import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/providers.dart';

class NotificationListView extends ConsumerWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationList = ref.watch(notificationListProvider);
    return notificationList.when(
      data: (notificationList) => ListView.builder(
        itemCount: notificationList.length,
        itemBuilder: (context, index) {
          final notification = notificationList[index];
          return ListTile(
            title: Text(notification.title),
            subtitle: Text(notification.content),
          );
        },
      ),
      error: (error, _) => ErrorWidget(error),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
