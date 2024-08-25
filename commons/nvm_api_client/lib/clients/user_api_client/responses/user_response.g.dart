// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      id: json['id'] as String,
      username: json['username'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      phoneCountryCode: json['phoneCountryCode'] as String?,
      avatar: json['avatar'] as String?,
      thumbnailAvatarUrl: json['thumbnailAvatar'] as String?,
      emailVerifiedAt: json['emailVerifiedAt'],
      phoneVerifiedAt: json['phoneVerifiedAt'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'phoneCountryCode': instance.phoneCountryCode,
      'avatar': instance.avatar,
      'thumbnailAvatar': instance.thumbnailAvatarUrl,
      'emailVerifiedAt': instance.emailVerifiedAt,
      'phoneVerifiedAt': instance.phoneVerifiedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
