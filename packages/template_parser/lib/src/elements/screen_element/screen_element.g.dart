// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScreenElement _$ScreenElementFromJson(Map<String, dynamic> json) =>
    ScreenElement(
      title: json['title'] as String,
      screenCode: json['screenCode'] as String,
      contextName: json['contextName'] as String,
      requiredAuth: json['requiredAuth'] as bool,
      screenType: json['screenType'] as String,
      screenStates: (json['screenStates'] as List<dynamic>)
          .map((e) => StateElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      screenActions: (json['screenActions'] as List<dynamic>)
          .map((e) => ActionElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      screenComponents: (json['screenComponents'] as List<dynamic>)
          .map((e) => ComponentElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScreenElementToJson(ScreenElement instance) =>
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
