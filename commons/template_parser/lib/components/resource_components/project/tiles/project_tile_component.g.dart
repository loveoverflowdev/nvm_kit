// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_tile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectTileComponent _$ProjectTileComponentFromJson(
        Map<String, dynamic> json) =>
    ProjectTileComponent(
      id: json['id'] as String,
      titleKey: json['titleKey'] as String,
      subtitleKey: json['subtitleKey'] as String?,
    )..type = json['type'] as String;

Map<String, dynamic> _$ProjectTileComponentToJson(
        ProjectTileComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'titleKey': instance.titleKey,
      'subtitleKey': instance.subtitleKey,
    };
