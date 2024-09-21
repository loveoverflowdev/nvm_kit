// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_refs_tile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveRefsTileComponent _$ActiveRefsTileComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveRefsTileComponent(
      fieldTitle: json['fieldTitle'] as String,
      fieldCode: json['fieldCode'] as String,
      activeStructureCode: json['activeStructureCode'] as String,
      titleKey: json['titleKey'] as String,
      subtitleKey: json['subtitleKey'] as String?,
    );

Map<String, dynamic> _$ActiveRefsTileComponentToJson(
        ActiveRefsTileComponent instance) =>
    <String, dynamic>{
      'fieldTitle': instance.fieldTitle,
      'fieldCode': instance.fieldCode,
      'activeStructureCode': instance.activeStructureCode,
      'titleKey': instance.titleKey,
      'subtitleKey': instance.subtitleKey,
    };
