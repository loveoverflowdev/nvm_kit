// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppComponent _$AppComponentFromJson(Map<String, dynamic> json) => AppComponent(
      appCode: json['appCode'] as String,
      index: json['index'] as String,
      pages: (json['pages'] as List<dynamic>)
          .map((e) => PageComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$AppComponentToJson(AppComponent instance) =>
    <String, dynamic>{
      'appCode': instance.appCode,
      'index': instance.index,
      'title': instance.title,
      'pages': instance.pages,
    };
