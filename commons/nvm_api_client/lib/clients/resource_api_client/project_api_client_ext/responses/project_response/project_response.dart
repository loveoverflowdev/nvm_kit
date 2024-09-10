import 'package:json_annotation/json_annotation.dart';

part 'project_response.g.dart';

@JsonSerializable()
class ProjectResponse {
  final String? id;
  final bool? isDefault;
  final String? projectName;
  final String? projectDescription;
  final String? icon;
  final String? createdAt;
  final String? updatedAt;

  ProjectResponse({
    this.id,
    this.isDefault,
    this.projectName,
    this.projectDescription,
    this.icon,
    this.createdAt,
    this.updatedAt,
  });

  factory ProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectResponseToJson(this);
}

/*
{
            "id": "644768476803630919",
            "isDefault": true,
            "projectName": "Default Project",
            "projectDescription": "",
            "icon": "",
            "createdAt": "2024-06-21 13:27:52",
            "updatedAt": null,
            "teamIds": []
        }
*/
