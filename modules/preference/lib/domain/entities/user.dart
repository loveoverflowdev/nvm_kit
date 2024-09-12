final class User {
  final String id;
  final String username;
  final String fullName;
  final String? email;
  final String? phone;
  final String avatar;
  final String? thumbnailAvatar;

  User({
    required this.id,
    required this.username,
    required this.fullName,
    required this.avatar,
    this.email,
    this.phone,
    this.thumbnailAvatar,
  });
}

/*
"data": {
        "id": "605303072528270018",
        "username": "nvmteam",
        "fullName": "NVM Team",
        "email": "nvmteam@gmail.com",
        "phone": "",
        "phoneCountryCode": "",
        "avatar": "http://172.23.124.11/attachments/user/avatar/avatar.png",
        "thumbnailAvatar": "",
        "emailVerifiedAt": null,
        "phoneVerifiedAt": null,
        "createdAt": null,
        "updatedAt": null
    }
*/