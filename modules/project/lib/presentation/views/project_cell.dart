import 'package:flutter/material.dart';
import 'package:project/domain.dart';

class ProjectCell extends StatelessWidget {
  final Project project;
  final void Function(Project project) onPressed;

  const ProjectCell({
    super.key,
    required this.project,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onPressed(project),
      leading: const Icon(Icons.work),
      title: Text(project.name),
      subtitle: Text(project.createdAt ?? ''),
    );
  }
}
