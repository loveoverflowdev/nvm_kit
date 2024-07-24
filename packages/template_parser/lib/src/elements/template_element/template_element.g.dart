// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemplateElement _$TemplateElementFromJson(Map<String, dynamic> json) =>
    TemplateElement(
      apps: (json['apps'] as List<dynamic>)
          .map((e) => AppElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TemplateElementToJson(TemplateElement instance) =>
    <String, dynamic>{
      'apps': instance.apps,
    };
