import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';

@JsonSerializable()
final class Role {
  final String id;
  final String name;
  final String shortName;
  final String description;

  Role({
    required this.id,
    required this.name,
    required this.shortName,
    required this.description,
  });

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
  Map<String, dynamic> toJson() => _$RoleToJson(this);
}
