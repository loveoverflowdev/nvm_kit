import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';

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
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ref.read(notificationListProvider.notifier).loadNotificationList(),
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
      loading: () => const AppCircularLoading(),
    );
  }
}
