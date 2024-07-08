import 'package:json_annotation/json_annotation.dart';

part 'active_resource_creator.g.dart';

@JsonSerializable()
final class ActiveResourceCreator {
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

  factory ActiveResourceCreator.fromJson(Map<String, dynamic> json) =>
      _$ActiveResourceCreatorFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveResourceCreatorToJson(this);
}
