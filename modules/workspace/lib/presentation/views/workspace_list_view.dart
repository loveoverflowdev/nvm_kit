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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(workspaceListProvider.notifier).loadWorkspaceList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final workspaceSelecing = ref.read(workspaceSelectingProvider.notifier);
    final workspaceList = ref.watch(workspaceListProvider);
    ref.listen(workspaceSelectingProvider, (previous, current) {
      current.when(
        data: (workspace) {
          if (workspace != null) {
            showScaffoldMessage(
              context,
              "Open workspace '${workspace.name}'",
            );
          }
        },
        error: (error, _) {
          showScaffoldMessage(context, error.toString());
        },
        loading: () => {},
      );
    });
    return workspaceList.when(
      data: (workspaceList) => ListView.separated(
        itemCount: workspaceList.length,
        itemBuilder: (context, index) {
          final workspace = workspaceList[index];
          return WorkspaceTile(
            onTap: (workspace) {
              workspaceSelecing.selectWorkspace(workspace);
            },
            workspace: workspace,
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
      error: (error, _) => ErrorWidget(error),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
