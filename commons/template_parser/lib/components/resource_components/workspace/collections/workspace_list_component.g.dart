// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_list_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkspaceListComponent _$WorkspaceListComponentFromJson(
        Map<String, dynamic> json) =>
    WorkspaceListComponent(
      tile:
          WorkspaceTileComponent.fromJson(json['tile'] as Map<String, dynamic>),
    )..type = json['type'] as String;

Map<String, dynamic> _$WorkspaceListComponentToJson(
        WorkspaceListComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'tile': instance.tile,
    };
