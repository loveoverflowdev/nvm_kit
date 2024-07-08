import 'package:flutter/material.dart';

import 'project_list_view.dart';

class ProjectListScaffold extends StatelessWidget {
  const ProjectListScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project List'),
      ),
      body: const ProjectListView(),
    );
  }
}
