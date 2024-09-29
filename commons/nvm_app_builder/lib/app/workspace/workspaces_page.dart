import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:workspace/workspace.dart' as workspace;

class WorkspacesPage extends StatelessWidget {
  const WorkspacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a workspace'),
      ),
      body: Consumer(
        child: const workspace.WorkspaceListView(),
        builder: (_, WidgetRef ref, child) {
          ref.listen(
            workspace.workspaceSelectingProvider,
            (previous, current) {
              current.when(
                data: (_) {
                  context.go('/projects');
                },
                error: (error, _) {
                  showScaffoldMessage(context, error.toString());
                },
                loading: () {},
              );
            },
          );
          return child!;
        },
      ),
    );
  }
}
