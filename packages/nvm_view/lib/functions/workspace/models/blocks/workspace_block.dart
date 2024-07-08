final class WorkspaceBlock {
  final String name;
  final String namespace;

  WorkspaceBlock({
    required this.name,
    required this.namespace,
  });

  factory WorkspaceBlock.empty() {
    return WorkspaceBlock(
      name: '',
      namespace: '',
    );
  }
}
