// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_tile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveResourceTileComponent _$ActiveResourceTileComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveResourceTileComponent(
      activeStructureCode: json['activeStructureCode'] as String,
      titleKey: json['titleKey'] as String,
      subtitleKey: json['subtitleKey'] as String?,
    );

Map<String, dynamic> _$ActiveResourceTileComponentToJson(
        ActiveResourceTileComponent instance) =>
    <String, dynamic>{
      'activeStructureCode': instance.activeStructureCode,
      'titleKey': instance.titleKey,
      'subtitleKey': instance.subtitleKey,
    };
