import 'package:json_annotation/json_annotation.dart';

part 'role_response.g.dart';

@JsonSerializable()
class RoleResponse {
  final String id;
  final String name;
  final String shortName;
  final String description;

  RoleResponse({
    required this.id,
    required this.name,
    required this.shortName,
    required this.description,
  });

  factory RoleResponse.fromJson(Map<String, dynamic> json) =>
      _$RoleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RoleResponseToJson(this);
}



/*
{
          "id": "657763459697477371",
          "name": "Tester",
          "shortName": "test",
          "description": "Người kiểm thử dự án"
      }
*/
