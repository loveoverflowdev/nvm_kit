import 'package:flutter/material.dart';
import 'package:workspace/presentation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';

class WorkspaceListView extends ConsumerStatefulWidget {
  const WorkspaceListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _WorkspaceListViewState();
}

class _WorkspaceListViewState extends ConsumerState<WorkspaceListView> {
  @override
  void initState() {
    super.initState();
    ref.read(workspaceListProvider.notifier).loadWorkspaces();
  }

  @override
  Widget build(BuildContext context) {
    final workspaceSelecing = ref.read(workspaceSelectingProvider.notifier);
    final workspaceList = ref.watch(workspaceListProvider);
    return workspaceList.when(
      data: (workspaceList) => ListView.builder(
        itemCount: workspaceList.length,
        itemBuilder: (context, index) {
          final workspace = workspaceList[index];
          return WorkspaceTile(
            onTap: (workspace) {
              workspaceSelecing.selectWorkspaceId(workspace.id);
            },
            workspace: workspace,
          );
        },
      ),
      error: (error, _) => ErrorWidget(error),
      loading: () => const AppCircularLoading(),
    );
  }
}
