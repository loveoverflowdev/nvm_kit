// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_tile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveTileComponent _$ActiveResourceTileComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveTileComponent(
      activeStructureCode: json['activeStructureCode'] as String,
      titleKey: json['titleKey'] as String,
      subtitleKey: json['subtitleKey'] as String?,
    );

Map<String, dynamic> _$ActiveResourceTileComponentToJson(
        ActiveTileComponent instance) =>
    <String, dynamic>{
      'activeStructureCode': instance.activeStructureCode,
      'titleKey': instance.titleKey,
      'subtitleKey': instance.subtitleKey,
    };
