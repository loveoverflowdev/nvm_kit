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
    return Container();
  }
}
