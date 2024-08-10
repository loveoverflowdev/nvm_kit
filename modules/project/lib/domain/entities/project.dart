class Project {
  final String id;
  final String name;
  final String description;
  final List<String> teamIds;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Project({
    String? id,
    String? name,
    String? description,
    List<String>? teamIds,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : id = id ?? '',
        name = name ?? '',
        description = description ?? '',
        teamIds = teamIds ?? [],
        createdAt = createdAt,
        updatedAt = updatedAt;
}
