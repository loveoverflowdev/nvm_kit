import 'package:flutter/material.dart';
import 'package:workspace/workspace.dart';

class WorkspacesPage extends StatelessWidget {
  const WorkspacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workspaces'),
      ),
      body: WorkspaceListView(),
    );
  }
}
