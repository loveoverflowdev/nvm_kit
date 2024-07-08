import 'package:flutter/material.dart';

import 'workspace_list_view.dart';

class WorkspaceListScaffold extends StatelessWidget {
  const WorkspaceListScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workspaces'),
      ),
      body: const WorkspaceListView(),
    );
  }
}
