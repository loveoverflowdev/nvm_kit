import 'package:flutter/material.dart';
import 'package:workspace/domain.dart' show Workspace;

class WorkspaceTile extends StatelessWidget {
  final void Function(Workspace) onTap;
  final Workspace workspace;

  const WorkspaceTile({
    super.key,
    required this.workspace,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTap(workspace),
      title: Text(workspace.name),
      subtitle: Text(workspace.namespace),
    );
  }
}
