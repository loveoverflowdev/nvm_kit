final class Workspace {
  final String id;
  final String name;
  final String namespace;

  Workspace({
    String? id,
    String? name,
    String? namespace,
  })  : name = name ?? '',
        namespace = namespace ?? '',
        id = id ?? '';
}
