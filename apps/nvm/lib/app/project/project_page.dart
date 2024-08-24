import 'package:flutter/material.dart';
import 'package:project/project.dart' as project;
import 'package:active_resource/active_resource.dart' as active_resource;

class ProjectPage extends StatelessWidget {
  final String id;

  const ProjectPage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return project.ProjectView(
      projectId: id,
      builder: (context, project) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text(project.name),
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'All Recipes'),
                  Tab(text: 'Favorites'),
                ],
              ),
            ),
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                active_resource.ActiveResourceListView(
                  resourceCode: 'user_stories',
                ),
                active_resource.ActiveResourceListView(
                  resourceCode: 'tasks',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
