// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_creator_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveResourceCreatorResponse _$ActiveResourceCreatorResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveResourceCreatorResponse(
      id: json['id'] as String,
      username: json['username'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      avatarUrl: json['avatar'] as String,
      thumbnailAvatarUrl: json['thumbnailAvatar'] as String,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$ActiveResourceCreatorResponseToJson(
        ActiveResourceCreatorResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatarUrl,
      'thumbnailAvatar': instance.thumbnailAvatarUrl,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
