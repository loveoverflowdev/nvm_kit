import 'package:json_annotation/json_annotation.dart';

part 'active_resource_creator_response.g.dart';

@JsonSerializable()
final class ActiveResourceCreatorResponse {
  final String id;

  final String? username;

  final String? fullName;

  final String? email;

  final String? phone;

  @JsonKey(name: 'avatar')
  final String? avatarUrl;

  @JsonKey(name: 'thumbnailAvatar')
  final String? thumbnailAvatarUrl;

  final dynamic createdAt;
  final dynamic updatedAt;

  ActiveResourceCreatorResponse({
    required this.id,
    this.username,
    this.fullName,
    this.email,
    this.phone,
    this.avatarUrl,
    this.thumbnailAvatarUrl,
    this.createdAt,
    this.updatedAt,
  });

  factory ActiveResourceCreatorResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveResourceCreatorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveResourceCreatorResponseToJson(this);
}
