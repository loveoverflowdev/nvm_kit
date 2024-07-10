import 'package:flutter/material.dart';

import '../../functions/functions.dart';

final class WorkspaceTile extends StatelessWidget {
  final WorkspaceBlock workspace;

  const WorkspaceTile({
    super.key,
    required this.workspace,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(workspace.name),
      subtitle: Text(workspace.namespace),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
