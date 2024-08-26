final class User {
  final String id;
  final String username;
  final String fullName;
  final String? email;
  final String? phone;
  final String? phoneCountryCode;
  final String? avatarUrl;
  final String? thumbnailAvatarUrl;
  final String? emailVerifiedAt;
  final String? phoneVerifiedAt;
  final dynamic createdAt;
  final dynamic updatedAt;

  User({
    required this.id,
    required this.username,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.phoneCountryCode,
    required this.avatarUrl,
    required this.thumbnailAvatarUrl,
    required this.emailVerifiedAt,
    required this.phoneVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });
}
