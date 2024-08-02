class Project {
  final String? id;
  final bool? isDefault;
  final String? projectName;
  final String? projectDescription;
  final String? icon;
  final String? createdAt;
  final String? updatedAt;
  final List<String>? teamIds;

  Project({
    this.id,
    this.isDefault,
    this.projectName,
    this.projectDescription,
    this.icon,
    this.createdAt,
    this.updatedAt,
    this.teamIds,
  });
}
