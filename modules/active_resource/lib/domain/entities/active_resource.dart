import 'package:addon/addon.dart' as addon;

final class ActiveResource {
  final String id;
  final Map<String, dynamic> liveAttributes;
  final String? projectId;
  final ActiveResourceCreator? creator;
  final List<addon.AddonAttribute> addonAttributes;

  ActiveResource({
    required String id,
    Map<String, dynamic>? liveAttributes,
    String? projectId,
    ActiveResourceCreator? creator,
    this.addonAttributes = const [],
  })  : id = id,
        liveAttributes = liveAttributes ?? {},
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
