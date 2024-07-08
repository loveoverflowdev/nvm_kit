import 'package:json_annotation/json_annotation.dart';

part 'active_resource_project_response.g.dart';

@JsonSerializable()
final class ActiveResourceProjectResponse {
  final String id;
  final bool isDefault;

  @JsonKey(name: 'projectName')
  final String name;

  @JsonKey(name: 'projectDescription')
  final String description;

  final String icon;

  final dynamic createdAt;
  final dynamic updatedAt;

  ActiveResourceProjectResponse({
    required this.id,
    required this.isDefault,
    required this.name,
    required this.description,
    required this.icon,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ActiveResourceProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveResourceProjectResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveResourceProjectResponseToJson(this);
}
