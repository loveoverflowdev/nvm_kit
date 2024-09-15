import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class RolesBoardListView extends ConsumerStatefulWidget {
  const RolesBoardListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RolesBoardListViewState();
}

class _RolesBoardListViewState extends ConsumerState<RolesBoardListView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(rolesBoardListProvider.notifier).loadRolesBoardList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final rolesBoardList = ref.watch(rolesBoardListProvider);

    return rolesBoardList.when(
      data: (data) {
        print('=========== $data');
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(data[index].boardName),
              subtitle: Text(data[index].description),
            );
          },
        );
      },
      error: (error, stackTrace) => AppErrorWidget(
        error,
        stackTrace: stackTrace,
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
