class ActiveResource {
  final String id;
  final Map<String, dynamic> attributes;
  final String? projectId;
  final ActiveResourceCreator? creator;

  ActiveResource({
    String? id,
    Map<String, dynamic>? attributes,
    String? projectId,
    ActiveResourceCreator? creator,
  })  : id = id ?? '',
        attributes = attributes ?? {},
        projectId = projectId,
        creator = creator;
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