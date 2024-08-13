// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScreenComponent _$ScreenComponentFromJson(Map<String, dynamic> json) =>
    ScreenComponent(
      title: json['title'] as String,
      screenCode: json['screenCode'] as String,
      contextName: json['contextName'] as String,
      requiredAuth: json['requiredAuth'] as bool,
      screenType: json['screenType'] as String,
      screenStates: (json['screenStates'] as List<dynamic>)
          .map((e) => StateComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      screenActions: (json['screenActions'] as List<dynamic>)
          .map((e) => ActionComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      screenComponents: (json['screenComponents'] as List<dynamic>)
          .map((e) => ScreenComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScreenComponentToJson(ScreenComponent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'screenCode': instance.screenCode,
      'contextName': instance.contextName,
      'requiredAuth': instance.requiredAuth,
      'screenType': instance.screenType,
      'screenStates': instance.screenStates,
      'screenActions': instance.screenActions,
      'screenComponents': instance.screenComponents,
    };
