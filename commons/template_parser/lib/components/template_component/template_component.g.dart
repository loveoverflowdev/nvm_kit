// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemplateComponent _$TemplateComponentFromJson(Map<String, dynamic> json) =>
    TemplateComponent(
      title: json['title'] as String,
      app: AppComponent.fromJson(json['app'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TemplateComponentToJson(TemplateComponent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'app': instance.app,
    };
