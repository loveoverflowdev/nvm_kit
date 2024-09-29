import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/project.dart' as project;

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hasDrawer = Scaffold.of(context).hasDrawer;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        leading: hasDrawer
            ? IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              )
            : null,
      ),
      body: project.ProjectListView(
        onProjectPressed: (project) {
          _route(context, projectId: project.id);
        },
      ),
    );
  }

  void _route(
    BuildContext context, {
    required String projectId,
  }) {
    context.go('/projects/$projectId');
  }
}
