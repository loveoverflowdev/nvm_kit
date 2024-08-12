import 'package:flutter/widgets.dart';
import 'package:workspace/domain.dart' show Workspace;

class WorkspaceTile extends StatelessWidget {
  final Workspace workspace;

  const WorkspaceTile({
    super.key,
    required this.workspace,
  });

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Text(workspace.name),
    );
  }
}
