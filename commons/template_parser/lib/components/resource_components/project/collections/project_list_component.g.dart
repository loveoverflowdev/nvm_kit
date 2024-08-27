// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectListComponent _$ProjectListComponentFromJson(
        Map<String, dynamic> json) =>
    ProjectListComponent(
      tile: ProjectTileComponent.fromJson(json['tile'] as Map<String, dynamic>),
    )..type = json['type'] as String;

Map<String, dynamic> _$ProjectListComponentToJson(
        ProjectListComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'tile': instance.tile,
    };
