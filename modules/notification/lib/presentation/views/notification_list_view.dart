import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class NotificationListView extends ConsumerStatefulWidget {
  const NotificationListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationListViewState();
}

class _NotificationListViewState extends ConsumerState<NotificationListView> {
  @override
  void initState() {
    super.initState();
    ref.read(notificationListProvider.notifier).loadNotifications(
          workspaceIdProvider: () async => '1', // TODO: urgent
        );
  }

  @override
  Widget build(BuildContext context) {
    final notificationList = ref.watch(notificationListProvider);
    return notificationList.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final notification = data[index];
          return ListTile(
            title: Text(
              notification.title,
            ),
            subtitle: Text(
              notification.content,
            ),
          );
        },
      ),
      error: (error, stackTrace) => ErrorWidget(error),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
