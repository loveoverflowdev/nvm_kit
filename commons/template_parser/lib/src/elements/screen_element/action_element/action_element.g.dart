// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionElement _$ActionElementFromJson(Map<String, dynamic> json) =>
    ActionElement(
      actionCode: json['actionCode'] as String,
      functionCode: json['functionCode'] as String,
      attributes: json['attributes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ActionElementToJson(ActionElement instance) =>
    <String, dynamic>{
      'actionCode': instance.actionCode,
      'functionCode': instance.functionCode,
      'attributes': instance.attributes,
    };
