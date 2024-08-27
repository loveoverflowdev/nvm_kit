// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_list_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveResourceListComponent _$ActiveResourceListComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveResourceListComponent(
      tile: ActiveResourceTileComponent.fromJson(
          json['tile'] as Map<String, dynamic>),
    )..type = json['type'] as String;

Map<String, dynamic> _$ActiveResourceListComponentToJson(
        ActiveResourceListComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'tile': instance.tile,
    };
