// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppComponent _$AppComponentFromJson(Map<String, dynamic> json) => AppComponent(
      appCode: json['appCode'] as String,
      index: json['index'] as String,
      screens: (json['screens'] as List<dynamic>)
          .map((e) => ScreenComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppComponentToJson(AppComponent instance) =>
    <String, dynamic>{
      'appCode': instance.appCode,
      'index': instance.index,
      'screens': instance.screens,
    };
