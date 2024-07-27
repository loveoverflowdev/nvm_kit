final class WorkspaceBlock {
  final String name;
  final String namespace;

  WorkspaceBlock({
    String? name,
    String? namespace,
  })  : name = name ?? '',
        namespace = namespace ?? '';

  factory WorkspaceBlock.empty() {
    return WorkspaceBlock(
      name: '',
      namespace: '',
    );
  }
}
