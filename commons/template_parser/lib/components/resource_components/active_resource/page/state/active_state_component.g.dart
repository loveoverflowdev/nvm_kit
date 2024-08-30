// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_state_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveStateComponent _$ActiveStateComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveStateComponent(
      stateCode: json['stateCode'] as String,
      liveAttributes: json['liveAttributes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ActiveStateComponentToJson(
        ActiveStateComponent instance) =>
    <String, dynamic>{
      'stateCode': instance.stateCode,
      'liveAttributes': instance.liveAttributes,
    };
