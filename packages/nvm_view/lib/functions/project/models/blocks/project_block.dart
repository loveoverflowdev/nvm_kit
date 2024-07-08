class ProjectBlock {
  final String id;
  final String name;
  final String description;
  final String teamId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ProjectBlock({
    required this.id,
    required this.name,
    required this.description,
    required this.teamId,
    this.createdAt,
    this.updatedAt,
  });

  factory ProjectBlock.empty() {
    return ProjectBlock(
      id: '',
      name: '',
      description: '',
      teamId: '',
    );
  }
}
