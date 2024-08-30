// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_action_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveActionComponent _$ActiveActionComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveActionComponent(
      actionCode: json['actionCode'] as String,
      actionType: json['actionType'] as String,
      liveAttributes: json['liveAttributes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ActiveActionComponentToJson(
        ActiveActionComponent instance) =>
    <String, dynamic>{
      'actionCode': instance.actionCode,
      'actionType': instance.actionType,
      'liveAttributes': instance.liveAttributes,
    };
