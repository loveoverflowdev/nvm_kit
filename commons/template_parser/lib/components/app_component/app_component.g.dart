// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppComponent _$AppComponentFromJson(Map<String, dynamic> json) => AppComponent(
      appCode: json['appCode'] as String,
      pages: (json['pages'] as List<dynamic>)
          .map((e) => ActivePageComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
    )..collectionTypePages = (json['collectionTypePages'] as List<dynamic>)
        .map((e) => ActivePageComponent.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$AppComponentToJson(AppComponent instance) =>
    <String, dynamic>{
      'appCode': instance.appCode,
      'title': instance.title,
      'pages': instance.pages,
    };
