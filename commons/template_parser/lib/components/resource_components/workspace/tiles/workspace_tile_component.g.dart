// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_tile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkspaceTileComponent _$WorkspaceTileComponentFromJson(
        Map<String, dynamic> json) =>
    WorkspaceTileComponent(
      id: json['id'] as String,
      titleKey: json['titleKey'] as String,
      subtitleKey: json['subtitleKey'] as String?,
    )..type = json['type'] as String;

Map<String, dynamic> _$WorkspaceTileComponentToJson(
        WorkspaceTileComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'titleKey': instance.titleKey,
      'subtitleKey': instance.subtitleKey,
    };
