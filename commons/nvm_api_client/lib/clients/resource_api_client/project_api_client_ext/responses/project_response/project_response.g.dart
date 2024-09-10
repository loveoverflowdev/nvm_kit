// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectResponse _$ProjectResponseFromJson(Map<String, dynamic> json) =>
    ProjectResponse(
      id: json['id'] as String?,
      isDefault: json['isDefault'] as bool?,
      projectName: json['projectName'] as String?,
      projectDescription: json['projectDescription'] as String?,
      icon: json['icon'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ProjectResponseToJson(ProjectResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isDefault': instance.isDefault,
      'projectName': instance.projectName,
      'projectDescription': instance.projectDescription,
      'icon': instance.icon,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
