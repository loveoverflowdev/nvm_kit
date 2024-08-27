// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionComponent _$ActionComponentFromJson(Map<String, dynamic> json) =>
    ActionComponent(
      actionCode: json['actionCode'] as String,
      actionType: json['actionType'] as String,
      attributes: json['attributes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ActionComponentToJson(ActionComponent instance) =>
    <String, dynamic>{
      'actionCode': instance.actionCode,
      'actionType': instance.actionType,
      'attributes': instance.attributes,
    };
