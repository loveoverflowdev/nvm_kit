import 'package:flutter/material.dart';
import 'package:project/project.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

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
      body: const ProjectListView(),
    );
  }
}
