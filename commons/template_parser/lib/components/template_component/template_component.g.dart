// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemplateComponent _$TemplateComponentFromJson(Map<String, dynamic> json) =>
    TemplateComponent(
      title: json['title'] as String,
      apps: (json['apps'] as List<dynamic>)
          .map((e) => AppComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TemplateComponentToJson(TemplateComponent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'apps': instance.apps,
    };
