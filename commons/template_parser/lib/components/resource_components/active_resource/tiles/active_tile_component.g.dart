// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_tile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveTileComponent _$ActiveTileComponentFromJson(Map<String, dynamic> json) =>
    ActiveTileComponent(
      activeStructureCode: json['activeStructureCode'] as String,
      titleKey: json['titleKey'] as String,
      subtitleKey: json['subtitleKey'] as String?,
      extraKeys:
          (json['extraKeys'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ActiveTileComponentToJson(
        ActiveTileComponent instance) =>
    <String, dynamic>{
      'activeStructureCode': instance.activeStructureCode,
      'titleKey': instance.titleKey,
      'subtitleKey': instance.subtitleKey,
      'extraKeys': instance.extraKeys,
    };
