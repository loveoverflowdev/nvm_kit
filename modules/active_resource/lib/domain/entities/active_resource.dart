class ActiveResource {
  final String id;
  final Map<String, dynamic> attributes;
  final ActiveResourceProject? project;
  final ActiveResourceCreator? creator;

  ActiveResource({
    String? id,
    Map<String, dynamic>? attributes,
    ActiveResourceProject? project,
    ActiveResourceCreator? creator,
  })  : id = id ?? '',
        attributes = attributes ?? {},
        project = project,
        creator = creator;
}

class ActiveResourceProject {
  final String id;
  final bool isDefault;
  final String name;
  final String description;
  final String icon;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ActiveResourceProject({
    String? id,
    bool? isDefault,
    String? name,
    String? description,
    String? icon,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : id = id ?? '',
        isDefault = isDefault ?? false,
        name = name ?? '',
        description = description ?? '',
        icon = icon ?? '',
        createdAt = createdAt,
        updatedAt = updatedAt;
}

class ActiveResourceCreator {
  final String username;
  final String id;
  final String email;
  final String phone;
  final String avatarUrl;
  final String thumbnailAvatarUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ActiveResourceCreator({
    String? username,
    String? id,
    String? email,
    String? phone,
    String? avatarUrl,
    String? thumbnailAvatarUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : username = username ?? '',
        id = id ?? '',
        email = email ?? '',
        phone = phone ?? '',
        avatarUrl = avatarUrl ?? '',
        thumbnailAvatarUrl = thumbnailAvatarUrl ?? '',
        createdAt = createdAt,
        updatedAt = updatedAt;
}

/*
final String id;
  final String username;
  final String fullName;
  final String email;
  final String phone;

  @JsonKey(name: 'avatar')
  final String avatarUrl;

  @JsonKey(name: 'thumbnailAvatar')
  final String thumbnailAvatarUrl;

  final dynamic createdAt;
  final dynamic updatedAt;
*/