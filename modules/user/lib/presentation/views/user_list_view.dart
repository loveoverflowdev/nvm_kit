import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class UserListView extends ConsumerWidget {
  const UserListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userList = ref.watch(userListProvider);
    return userList.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final user = data[index];
          return ListTile(
            title: Text(user.fullName),
            subtitle: Text(user.username),
          );
        },
      ),
      error: (error, stackTrace) => AppErrorWidget(
        error.toString(),
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
