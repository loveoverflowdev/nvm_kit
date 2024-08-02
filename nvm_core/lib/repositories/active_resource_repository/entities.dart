final class ActiveResource {
  final String id;
  final Map<String, dynamic> attributes;
  final ActiveResourceProject project;
  final ActiveResourceCreator creator;

  ActiveResource({
    required this.id,
    required this.attributes,
    required this.project,
    required this.creator,
  });
}

final class ActiveResourceCreator {
  final String id;
  final String username;
  final String fullName;
  final String email;
  final String phone;
  final String avatarUrl;
  final String thumbnailAvatarUrl;
  final dynamic createdAt;
  final dynamic updatedAt;

  ActiveResourceCreator({
    required this.id,
    required this.username,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.avatarUrl,
    required this.thumbnailAvatarUrl,
    required this.createdAt,
    required this.updatedAt,
  });
}

final class ActiveResourceProject {
  final String id;
  final bool isDefault;
  final String name;
  final String description;

  final String icon;

  final dynamic createdAt;
  final dynamic updatedAt;

  ActiveResourceProject({
    required this.id,
    required this.isDefault,
    required this.name,
    required this.description,
    required this.icon,
    required this.createdAt,
    required this.updatedAt,
  });
}
