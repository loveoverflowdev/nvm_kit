// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_detail_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveDetailComponent _$ActiveDetailComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveDetailComponent(
      primaryTile: ActiveTileComponent.fromJson(
          json['primaryTile'] as Map<String, dynamic>),
      updateFormContextName: json['updateFormContextName'] as String?,
      refTileList: (json['refTileList'] as List<dynamic>?)
              ?.map((e) =>
                  ActiveRefsTileComponent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ActiveDetailComponentToJson(
        ActiveDetailComponent instance) =>
    <String, dynamic>{
      'primaryTile': instance.primaryTile,
      'refTileList': instance.refTileList,
      'updateFormContextName': instance.updateFormContextName,
    };
