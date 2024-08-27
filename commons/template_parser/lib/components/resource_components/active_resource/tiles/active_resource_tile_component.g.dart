// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_tile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveResourceTileComponent _$ActiveResourceTileComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveResourceTileComponent(
      activeStructureId: json['activeStructureId'] as String,
      titleKey: json['titleKey'] as String,
      subtitleKey: json['subtitleKey'] as String?,
    )..type = json['type'] as String;

Map<String, dynamic> _$ActiveResourceTileComponentToJson(
        ActiveResourceTileComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'activeStructureId': instance.activeStructureId,
      'titleKey': instance.titleKey,
      'subtitleKey': instance.subtitleKey,
    };
