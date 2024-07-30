// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionPayload _$ActionPayloadFromJson(Map<String, dynamic> json) =>
    ActionPayload(
      actionName: json['actionName'] as String,
      actionType: json['actionType'] as String,
      url: json['url'] as String,
      actionColor: json['actionColor'] as String,
      actionStatus: json['actionStatus'] as String,
    );

Map<String, dynamic> _$ActionPayloadToJson(ActionPayload instance) =>
    <String, dynamic>{
      'actionName': instance.actionName,
      'actionType': instance.actionType,
      'url': instance.url,
      'actionColor': instance.actionColor,
      'actionStatus': instance.actionStatus,
    };
