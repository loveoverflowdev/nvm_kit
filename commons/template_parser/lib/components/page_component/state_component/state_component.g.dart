// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StateComponent _$StateComponentFromJson(Map<String, dynamic> json) =>
    StateComponent(
      stateCode: json['stateCode'] as String,
      liveAttributes: json['liveAttributes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StateComponentToJson(StateComponent instance) =>
    <String, dynamic>{
      'stateCode': instance.stateCode,
      'liveAttributes': instance.liveAttributes,
    };
