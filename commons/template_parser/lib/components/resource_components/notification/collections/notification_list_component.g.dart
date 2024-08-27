// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationListComponent _$NotificationListComponentFromJson(
        Map<String, dynamic> json) =>
    NotificationListComponent(
      tile: NotificationTileComponent.fromJson(
          json['tile'] as Map<String, dynamic>),
    )..type = json['type'] as String;

Map<String, dynamic> _$NotificationListComponentToJson(
        NotificationListComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'tile': instance.tile,
    };
