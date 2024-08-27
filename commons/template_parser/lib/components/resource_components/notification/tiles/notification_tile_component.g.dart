// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_tile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationTileComponent _$NotificationTileComponentFromJson(
        Map<String, dynamic> json) =>
    NotificationTileComponent(
      id: json['id'] as String,
      titleKey: json['titleKey'] as String,
      subtitleKey: json['subtitleKey'] as String?,
    )..type = json['type'] as String;

Map<String, dynamic> _$NotificationTileComponentToJson(
        NotificationTileComponent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'titleKey': instance.titleKey,
      'subtitleKey': instance.subtitleKey,
    };
