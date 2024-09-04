// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_collection_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveCollectionComponent _$ActiveCollectionComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveCollectionComponent(
      tile: ActiveTileComponent.fromJson(json['tile'] as Map<String, dynamic>),
      detailContextName: json['detailContextName'] as String?,
    );

Map<String, dynamic> _$ActiveCollectionComponentToJson(
        ActiveCollectionComponent instance) =>
    <String, dynamic>{
      'tile': instance.tile,
      'detailContextName': instance.detailContextName,
    };
