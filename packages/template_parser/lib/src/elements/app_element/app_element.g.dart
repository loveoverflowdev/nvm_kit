// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppElement _$AppElementFromJson(Map<String, dynamic> json) => AppElement(
      appCode: json['appCode'] as String,
      index: json['index'] as String,
      screens: (json['screens'] as List<dynamic>)
          .map((e) => ScreenElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppElementToJson(AppElement instance) =>
    <String, dynamic>{
      'appCode': instance.appCode,
      'index': instance.index,
      'screens': instance.screens,
    };
