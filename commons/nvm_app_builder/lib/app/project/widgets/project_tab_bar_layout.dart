import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../widgets/tab_bar_layout.dart';

import 'package:project/project.dart' as project;

class ProjectTabBarLayout extends StatelessWidget {
  const ProjectTabBarLayout({
    super.key,
    required this.navigationIndex,
    required this.onDestination,
    required this.destinations,
    required this.child,
    required this.projectId,
  });

  final String projectId;
  final Widget child;
  final int navigationIndex;
  final ValueChanged<int> onDestination;
  final List<TabBarDestination> destinations;

  @override
  Widget build(BuildContext context) {
    return TabBarLayout(
      appBarTitle: _ProjectAppBarTitle(
        projectId: projectId,
      ),
      navigationIndex: navigationIndex,
      onDestination: onDestination,
      destinations: destinations,
      child: child,
    );
  }
}

class _ProjectAppBarTitle extends StatelessWidget {
  final String projectId;

  const _ProjectAppBarTitle({
    required this.projectId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.sm),
      child: project.ProjectView(
        projectId: projectId,
        builder: (context, project) => Text(project.name),
      ),
    );
  }
}
