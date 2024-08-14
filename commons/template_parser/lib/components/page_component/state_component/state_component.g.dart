// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StateComponent _$StateComponentFromJson(Map<String, dynamic> json) =>
    StateComponent(
      stateCode: json['stateCode'] as String,
      attributes: json['attributes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StateComponentToJson(StateComponent instance) =>
    <String, dynamic>{
      'stateCode': instance.stateCode,
      'attributes': instance.attributes,
    };
