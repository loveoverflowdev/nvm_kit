import 'package:flutter/material.dart';
import 'package:workspace/presentation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';
import '../widgets.dart';

class WorkspaceListView extends ConsumerWidget {
  const WorkspaceListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workspaceList = ref.watch(workspaceListProvider);
    return workspaceList.when(
      data: (workspaceList) => ListView.builder(
        itemCount: workspaceList.length,
        itemBuilder: (context, index) {
          final workspace = workspaceList[index];
          return WorkspaceTile(
            workspace: workspace,
          );
        },
      ),
      error: (error, _) => ErrorWidget(error),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
