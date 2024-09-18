import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  late final String id;
  late final String username;
  late final String fullName;
  final String? email;
  final String? phone;
  final String? phoneCountryCode;

  @JsonKey(name: 'avatar')
  final String? avatar;

  @JsonKey(name: 'thumbnailAvatar')
  final String? thumbnailAvatarUrl;
  final dynamic emailVerifiedAt;
  final dynamic phoneVerifiedAt;
  final dynamic createdAt;
  final dynamic updatedAt;

  UserResponse({
    required this.id,
    required this.username,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.phoneCountryCode,
    required this.avatar,
    required this.thumbnailAvatarUrl,
    required this.emailVerifiedAt,
    required this.phoneVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

/*
{
    "id": "605303072528270018",
    "username": "nvmteam",
    "fullName": "NVM Team",
    "email": "nvmteam@gmail.com",
    "phone": "",
    "phoneCountryCode": "",
    "avatar": "avatar.png",
    "thumbnailAvatar": "",
    "emailVerifiedAt": null,
    "phoneVerifiedAt": null,
    "createdAt": null,
    "updatedAt": null
}
*/
