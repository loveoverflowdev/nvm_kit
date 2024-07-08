// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_project_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveResourceProjectResponse _$ActiveResourceProjectResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveResourceProjectResponse(
      id: json['id'] as String,
      isDefault: json['isDefault'] as bool,
      name: json['projectName'] as String,
      description: json['projectDescription'] as String,
      icon: json['icon'] as String,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$ActiveResourceProjectResponseToJson(
        ActiveResourceProjectResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isDefault': instance.isDefault,
      'projectName': instance.name,
      'projectDescription': instance.description,
      'icon': instance.icon,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
